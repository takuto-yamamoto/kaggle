How to Use
===
Build and run `tarte/kaggle-base`.
```
$ ./docker_build.sh
$ docker run --rm -it tarte/kaggle-base
```
Set Jupyter Notebook password.
```
# python3 ~/scripts/pass.py
Enter password:
Verify password:
```
Check the response and set your hashed password in your local Dockerfile.
```
Please set the following JUPYTER_PASSWD variable in Dockerfile.

ARG JUPYTER_PASSWD= {This is your hashed pasword}
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