# Generate a hashed password.
from notebook.auth import passwd

hashed_passwd = passwd()

print('')
print('Please set the following JUPYTER_PASSWD variable in Dockerfile.')
print('')
print(f"ARG JUPYTER_PASSWD={hashed_passwd}")
print('')
