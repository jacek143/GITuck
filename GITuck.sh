#!/bin/bash
QUACK_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
REPO_PATH=$1
cd ${REPO_PATH}
RESULT=$(git remote update --prune 2>&1 >/dev/null)
cd - > /dev/null
if [[ ${RESULT} ]]; then
  echo ${RESULT}
  aplay --quiet ${QUACK_PATH}/quack.wav
fi
