#!/usr/bin/env sh
find $CODE -type d \( -name out -or -name target -or -name cmake-build-debug -or -name dist -or -name node_modules -or -name __pycache__ -or -name venv \) -exec rm -rf {} \;


