SHELL=/bin/bash

# Installs miniconda (in ~/miniconda3/ foder). Only call this once.
conda_install:
	mkdir -p ~/miniconda3
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
	bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
	rm -rf ~/miniconda3/miniconda.sh
	~/miniconda3/bin/conda init bash

# Creates a fresh conda environment that can be activated with: conda activate ./conda_env
# Every project gets its own environment sorte relative to its root in the conda_env folder.
conda_fresh_env:
	-rm -r conda_env
	-~/miniconda3/bin/conda env create -f environment.yml --prefix conda_env

# This uses the python in you fresh environment (relative to project root).
run_program:
	./conda_env/bin/python main.py