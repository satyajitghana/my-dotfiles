# Download Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

# Install Anaconda
bash Anaconda3-2020.11-Linux-x86_64.sh

# Create a dev-environment
conda create --name dev-ink python=3.9 -c conda-forge

# Activate dev-ink
conda activate dev-ink

# Install jupyter notebook
conda install -c conda-forge notebook

conda install -c conda-forge jupyterthemees

jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T
