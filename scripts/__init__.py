# Copyright (c) 2018 Georgia Tech Research Corporation
# Distributed under the terms of the BSD-3-Clause License

from pathlib import Path
import platform
import subprocess


PLATFORM = platform.system().lower()

ROOT = Path(__file__).parent.parent

SRC = ROOT / "src"
SCRIPTS = ROOT / "scripts"
DOCS = ROOT / "docs"

COPYRIGHT_RE = r"Copyright \(c\) (\d{4}(\s-\s\d{4})?) Georgia Tech Research Corporation"

YEAR = "2018"
LICENSE = "BSD-3-Clause"
COPYRIGHT = f"Copyright (c) {YEAR} Georgia Tech Research Corporation"
DISTRIB = f"Distributed under the terms of the {LICENSE} License"

PY_HEADER = f"""# {COPYRIGHT}
# {DISTRIB}

"""

WEB_HEADER = f"""/*
  {COPYRIGHT}
  {DISTRIB}
*/

"""


PACKAGES = [ROOT / "package.json"] + list((ROOT / "src").rglob("**/package.json"))
VERSIONS = (ROOT / "src").rglob("**/_version.py")
RECIPES = (ROOT / "recipes").rglob("**/meta.yaml")
HISTORY = ROOT / "docs" / "History.ipynb"

TEST_OUT = ROOT / "_testoutput"
TEST_DIR = ROOT / "atest" / "acceptance"


def run(args, **kwargs):
    """ Probably unneccessary "convenience" wrapper
    """
    p = subprocess.Popen(list(map(str, args)), **kwargs)

    try:
        p.wait()
    except KeyboardInterrupt:
        p.terminate()
        p.wait()
    finally:
        p.returncode
