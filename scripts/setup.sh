#!/usr/bin/bash

# Install the necessary dependencies.

# ASSUMES: `brew` is available on the PATH
# USAGE: `bash scripts/setup.sh`

brew update && brew upgrade

brew install python@3.11
brew install jupyterlab # comes with the IPython kernel
brew install graphviz

brew link --overwrite jupyterlab

python3.11 -m venv env
source env/bin/actvate

echo "Using Python at $(which python3.11) with version $(python3.11 --version)"

python3.11 -m pip install --upgrade pip

pip install -r requirements.txt

echo "Using jupyter at $(which jupyter) with version $(jupyter --version)"

python -m ipykernel install --user --name=env

echo "All done!"
