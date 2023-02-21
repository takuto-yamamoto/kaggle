# Generate a hashed password.
from notebook.auth import passwd

hashed_passwd = passwd()

print('')
print('Please set the following JUPYTER_PASSWD variable in your local env.')
print('')
print(f"export JUPYTER_PASSWD={hashed_passwd}")
print('')
