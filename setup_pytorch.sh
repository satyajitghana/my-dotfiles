#!/bin/bash

# install cpu version of pytorch
conda install pytorch torchvision torchaudio cpuonly -c pytorch

# install albumentations
conda install -c conda-forge imgaug
conda install -c conda-forge albumentations
