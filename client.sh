#!/usr/bin/env bash
if [ -d "$HOME/miniconda3/envs/torpy36" ]; then
  PATH="$HOME/miniconda3/bin":$PATH

  source activate torpy36

else
  curl "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -o Miniconda_Install.sh

  bash Miniconda_Install.sh -b -f -p $HOME/miniconda3

  PATH="$HOME/miniconda3/bin":$PATH

  conda create -n torpy36 python=3.6 -y

  source activate torpy36

  pip install -r requirements.txt
fi
