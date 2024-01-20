#!/bin/bash

if [[ $POETRY_ACTIVE == "1" ]]; then
  export PYTHONDONTWRITEBYTECODE=1
  rm -fr ./test_results 2> /dev/null
  mkdir ./test_results 2> /dev/null
  pytest --cov=. --junitxml=test_results/results.xml -v && coverage html -d ./test_results/html && coverage xml -o ./test_results/coverage.xml
  rm -r .pytest_cache 2> /dev/null
  rm -r __pycache__ 2> /dev/null
  rm -r .coverage 2> /dev/null
else
  POETRY_ACTIVE=1 poetry run $0
fi
