# Install jupyter notebook, lab, nbblack and themes
conda install -c conda-forge notebook jupyterlab jupyterthemes nb_black
jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T

# Jupyter Lab Themes
# make sure to have node installed
jupyter labextension install @arbennett/base16-gruvbox-dark
jupyter labextension install @oriolmirosa/jupyterlab_materialdarker
jupyter labextension install @arbennett/base16-nord
jupyter labextension install @axlair/jupyterlab_vim

# IPyWidgets
conda install -c conda-forge ipywidgets
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
