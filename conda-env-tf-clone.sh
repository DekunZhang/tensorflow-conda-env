#!/bin/bash

conda env create --name $1 -f tf-server-env.yml
conda activate $1

bash tf-post-work.sh
