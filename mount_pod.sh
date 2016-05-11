# make mount folder exists
if [ ! -d ./pod-mount ]; then
    mkdir ./pod-mount
fi

read -p "Username on POD? " username

sshfs -o allow_other,defer_permissions $username@stacker:/ ./pod-mount
