# Copyright (c) 2018 Georgia Tech Research Corporation
# Distributed under the terms of the BSD-3-Clause License

from . import TEST_OUT, run


def combine():
    args = [
        "python",
        "-m",
        "robot.rebot",
        "--name",
        "IRobotFramework",
        "--outputdir",
        str(TEST_OUT),
        "--output",
        "output.xml",
    ] + list(map(str, TEST_OUT.glob("*.xml")))

    return run(args)


if __name__ == "__main__":
    combine()
