# Install the necessary dependencies.
# (ChatGPT wrote this... good luck!)

# ASSUMES: `choco` is available on the PATH
# USAGE: `. scripts/setup.ps1`

choco upgrade all -y

choco install python --version 3.11 -y

choco install jupyterlab graphviz -y

python -m venv env
.\env\Scripts\Activate

python -m pip install --upgrade pip

pip install -r requirements.txt

python -m ipykernel install --user --name=env

Write-Host "All done!"
