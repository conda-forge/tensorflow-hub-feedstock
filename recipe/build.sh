#!/bin/bash

WHEEL_DIR=${PWD}/wheel_dir
mkdir -p ${WHEEL_DIR}
bazel build tensorflow_hub/pip_package:build_pip_package
bazel-bin/tensorflow_hub/pip_package/build_pip_package ${WHEEL_DIR}
pip install --no-deps ${WHEEL_DIR}/*.whl
