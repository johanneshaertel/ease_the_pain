# Prerequisites

- Python installation is required. Tested with Python 3.11.6.
- Visual Studio Code (optional).

# Introduction

If you're frustrated with recurring Python dependency issues, follow this convention for setting up a Python environment for the repo (example: "Cuda with TensorFlow").

This was tested on Windows Subsystem for Linux (WSL, Ubuntu). Ensure NVIDIA drivers are installed (verify with `nvidia-smi`).

After following these steps, you'll have a fresh environment in *repo_folder/.venv*. This environment can be modified freely and is included in `.gitignore`. VS Code should detect it automatically, or follow the instructions below.

# Steps

1. Download and extract the zip file into your repo, or clone the repository.

2. In the terminal, navigate to the repo directory.

3. Run `make venv`.

4. Open VS Code in the repo directory (run `code .`).

5. In the top bar of VS Code, enter `> Python: Select Interpreter` and select the `.venv`.

6. That's it.

7. Rerun `make venv` if you change `requirements.txt`.

