#!/bin/bash

# Create the Python environment
python3 -m venv env

# Activate the Python environment
source env/bin/activate

# Install any required packages using pip
pip3 install -r requirements.txt

pip3 install --upgrade pip

# Run the EDA.ipynb Jupyter notebook in VS Code
code EDA.ipynb

