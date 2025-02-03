#!/bin/bash

set -exuo pipefail

WHEEL_DIR="./wheel_dir"
mkdir -p ${WHEEL_DIR}
bazel build tensorflow_hub/pip_package:build_pip_package
bazel-bin/tensorflow_hub/pip_package/build_pip_package ${WHEEL_DIR}
${PYTHON} -m pip install --no-deps ${WHEEL_DIR}/*.whl
