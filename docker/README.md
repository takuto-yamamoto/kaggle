How to Use
===
Copy your Kaggle API config file to this directory.
```
$ cp ~/.kaggle/kaggle.json ./kaggle.json
```

Build and run `tarte/kaggle-base`.
```
$ ./docker_build.sh
$ docker run --rm -it tarte/kaggle-base
```
Set your Jupyter Notebook password.
```
# python3 ~/scripts/pass.py
Enter password:
Verify password:
```
Check the command response and set your hashed password in your local env.
```
Please set the following JUPYTER_PASSWD variable in your local env.

export JUPYTER_PASSWD= {This is your hashed pasword}
```
If your gpus are avalable, edit docker run script.
```
- GPU=""
- # GPU="--gpus all"

+ # GPU=""
+ GPU="--gpus all"
```
Rebuild your docker-image and run the container. \
Then Juppyter Notebook will start at http://localhost:8888/.
```
$ ./docker_build.sh
$ ./docker_run.sh {Your container name}
```
<br>

Default Python Libraries
===
- matplotlib
- scikit-learn
- pandas
- scipy
- numpy
- seaborn
- tqdm
- kaggle
- torch
- torchvision
- torchaudio
- lightgbm
- optuna
