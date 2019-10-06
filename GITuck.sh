#!/bin/bash
REPO_PATH=$1
cd ${REPO_PATH}
RESULT=$(git remote update --prune 2>&1 >/dev/null)
cd - > /dev/null
if [[ ${RESULT} ]]; then
  echo ${RESULT}
  aplay --quiet quack.wav
fi
