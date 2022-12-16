# TensorFlow GPU conda enviornment creation scripts

## Requirements

Install your Nvidia graphics card driver and Anaconda/Miniconda.

## Disclaimer

I am not able to guarantee the functionality of the scripts in the future or other distributions. They work well in my Linux Distro (Ubuntu 22.04 LTS) with driver version 525.60.11. My current Anaconda version is `conda 22.11.1`, and TensorFlow version is 2.11.0.

## What they do

They can give you a conda environment with only jupyter and tensorflow installed. If you like, you can also use Google Colab to connect your local jupyter notebook.

## Usage

### Clone the repo and execute the `init-conda-tf.sh`

```bash
git clone https://github.com/DekunZhang/tensorflow-conda-env.git
cd tensorflow-conda-env
```

For the first time, you should execute the init-conda-tf.sh
```bash
bash init-conda-tf.sh
```
It will create conda environment naming `tf-server` as a base environment for spending less time in future environment creation.

### Future use

After execute the first script, you can use the following command to create a new environment.

```bash
bash conda-env-tf-clone.sh <name_for_env>
```

For example
```bash
bash conda-env-tf-clone.sh training-test
```
It will create a new environment naming training-test and do all other things for you, but only with jupyter and tensorflow installed.

## Jupyter Notebook default configuration

For my own convenience, I have set the following options as default configuration
```
c.NotebookApp.allow_origin = '*'
c.NotebookApp.disable_check_xsrf = True
c.NotebookApp.open_browser = False
c.NotebookApp.token = 'tf-server-token'
```
You can change them later in `~/.jupyter/jupyter_notebook_config.py`

