# Copyright (c) 2018 Georgia Tech Research Corporation
# Distributed under the terms of the BSD-3-Clause License

""" Apply source normalization and checking
"""
import os
from pathlib import Path
from subprocess import check_call

from nbformat import NO_CONVERT, read, write

PY_SRC = ["src", "setup.py", "scripts", "docs"]
RF_SRC = [os.path.join("atest", "resources"), os.path.join("atest", "acceptance")]


def lint():
    check_call(["python", "-m", "scripts.copyright"])
    check_call(["isort", "-rc"] + PY_SRC)
    check_call(["black"] + PY_SRC)
    check_call(["flake8"] + PY_SRC)

    for src in RF_SRC:
        check_call(["python", "-m", "robot.tidy", "-r", src])
        check_call(
            [
                "rflint",
                "--configure",
                "TooManyTestSteps:200",
                "--configure",
                "TooFewKeywordSteps:0",
                "--configure",
                "LineTooLong:200",
                src,
            ]
        )

    for nbp in (Path(__file__).parent.parent / "docs").rglob("*.ipynb"):
        nbf = read(str(nbp), NO_CONVERT)
        changed = False
        for cell in nbf.cells:
            if cell.cell_type == "code":
                if cell.outputs:
                    cell.outputs = []
                    changed = True
                if cell.execution_count:
                    cell.execution_count = None
                    changed = True
        if changed:
            print(f"Overwriting {nbp}")
            write(nbf, str(nbp))

    check_call(["jlpm"])
    check_call(["jlpm", "lint"])


if __name__ == "__main__":
    lint()
