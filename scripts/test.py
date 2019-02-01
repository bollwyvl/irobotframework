# Copyright (c) 2018 Georgia Tech Research Corporation
# Distributed under the terms of the BSD-3-Clause License

import sys

import chromedriver_binary  # noqa

from . import PLATFORM, TEST_DIR, TEST_OUT, run


def unit_tests(*pytest_args):
    (TEST_OUT / PLATFORM).mkdir(exist_ok=True, parents=True)
    return run(
        ["pytest", "--junitxml", f"{PLATFORM}.py.xunit.xml"] + list(pytest_args),
        cwd=(TEST_OUT / PLATFORM),
    )


def acceptance_tests(*robot_args):
    args = (
        [
            sys.executable,
            "-m",
            "robot",
            "--name",
            PLATFORM,
            "--outputdir",
            str(TEST_OUT),
            "--output",
            f"{PLATFORM}.robot.xml",
            "--log",
            f"{PLATFORM}.log.html",
            "--report",
            f"{PLATFORM}.report.html",
            "--xunit",
            f"{PLATFORM}.robot.xunit.xml",
            "--variable",
            f"OS:{PLATFORM}",
        ]
        + list(robot_args)
        + [str(TEST_DIR)]
    )
    return run(args)


if __name__ == "__main__":
    rc = 0
    args = sys.argv[1:]
    if not args:
        rc = unit_tests()
        if not rc:
            rc = acceptance_tests()
    elif args[0] == "py":
        rc = unit_tests(*args[1:])
    elif args[0] == "robot":
        rc = acceptance_tests(*args[1:])
    sys.exit(rc)
