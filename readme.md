# Intro

What follows shows how I use a combination of: 

- Miniconda
- TensorFlow and
- Visual Studio Code.

It tested this on my machine in Windows Subsystem Linux (WSL, Ubuntu). It also works on AWS with AMI: Deep Learning Base OSS Nvidia Driver GPU AMI (Ubuntu 20.04). I assume you need to assure that NVIDIA drivers are installed (I do this by nvidia-smi). Maybe some insights on this will follow.

1. After this procedure, you have miniconda in folder  *~/miniconda3/* installed. Conda will be registered in the bash after reopening the terminal. If there is a previous miniconda version on the location, it will be removed. This re-install is necessary if you installed trash in the base environment, which messes up things in every derived environment. Better do the re-install (Step 3) once.

2. After this procedure, you have a fresh environment relative to your repository root in *repo_folder/conda_env*. This environment can be messed up. You do not need to upload it to GitHub. It is derived from your *environment.yml* file. The python command that you can use in *repo_folder/conda_env/bin/python*.

# Steps

1. Clone the repo on the (remote) machine after ssh-keygen stuff.

2. Terminal, cd to repo.

3. (Just call this once for a machine) In the terminal, call ```make conda_install``` (see [Makefile](Makefile)) to install Miniconda. 

3. In the terminal, call ```make conda_fresh_env``` (see [Makefile](Makefile)) to create a fresh environment for this repo, relative to its root. The dependencies are stored in the [environment.yml](environment.yml). If you change dependencies, call again.

4. In the terminal, call ```make run_program``` (see [Makefile](Makefile)) to run the program. This will use the fresh environment and hopefully tell you that you use GPUs.

# VS Code.

1. Open VS Code on the repo.

2. In the top bar of VS Code (that can also be used for search), enter ```> Python: Select Interpreter``` and select
the ./conda_env/bin/python.

