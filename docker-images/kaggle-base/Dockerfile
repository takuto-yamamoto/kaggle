# CUDA 11.6 base Ubuntu 20.04
FROM nvidia/cuda:11.6.1-base-ubuntu20.04

# Install jupyter notebook
RUN apt-get update \
 && apt-get -y upgrade \
 && apt-get -y --no-install-recommends install jupyter-notebook \
 && apt-get -y --no-install-recommends install python3-pip \
 && apt-get -y --no-install-recommends install zip unzip

# Install matplotlib, tensorflow and sklearn
RUN pip3 install matplotlib scikit-learn
RUN pip3 install pandas scipy numpy seaborn tqdm
RUN pip3 install kaggle
RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
RUN pip3 install lightgbm optuna

# Jupyter notebook hashed password
ARG JUPYTER_PASSWD=''

# User name
ARG NB_USER='tarte'

# Copy kaggle.json
RUN mkdir /.kaggle
COPY ./kaggle.json /root/.kaggle/kaggle.json
RUN chmod 600 /root/.kaggle/kaggle.json

# Copy the scripts for hash password and notebook server config.
WORKDIR /home/$NB_USER
COPY ./scripts /home/$NB_USER/scripts

# Generate a notebook server config
RUN jupyter notebook -y --generate-config
RUN ./scripts/notebook_config.sh $JUPYTER_PASSWD

# working directory
WORKDIR work
RUN mkdir input output src

# Port
EXPOSE 8888
