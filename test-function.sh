#!/usr/bin/env bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cortex actions invoke hd/hello_docker --params-file "model/test_req.json"