# Intro

What follows shows how I use a combination of: 

- Miniconda
- TensorFlow and
- Visual Studio Code.

It tested this on my machine in Windows Subsystem Linux (WSL, Ubuntu). It also works on AWS with AMI: Deep Learning Base OSS Nvidia Driver GPU AMI (Ubuntu 20.04). I assume you need to assure that NVIDIA drivers are installed (I do this by nvidia-smi).

# Steps to run program.py.

1. Clone the repo on the (remote) machine after ssh-keygen stuff.

2. Terminal, cd to repo.

3. In the terminal, call ```make conda_install``` (see [Makefile](Makefile)) to install Miniconda. Just call this once.

3. In the terminal, call ```make conda_fresh_env``` (see [Makefile](Makefile)) to create a fresh environment for this repo, relative to its root. The dependencies are stored in the [environment.yml](environment.yml). If you change dependencies, call again.

4. In the terminal, call ```make run_program``` (see [Makefile](Makefile)) to run the program. This will use the fresh environment and hopefully tell you that you use GPUs.

# Register the environment in VS Code.

1. Open VS Code on the repo.

2. In the top bar of VS Code (that can also be used for search), enter ```> Python: Select Interpreter``` and select
the ./conda_env/bin/python.

