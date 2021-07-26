#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Overrides the platform arguments of the normal remote-linux config.
bazel run @cargo_raze//:raze \
    --config=remote-linux \
    --host_platform=//tools:cargo_raze_docker_image_platform \
    --platforms=//tools:cargo_raze_docker_image_platform \
    -- --manifest-path=$(realpath $DIR/../Cargo.toml)
