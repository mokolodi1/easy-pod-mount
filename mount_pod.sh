#!/usr/bin/env bash

# make mount folder exists
if [ ! -d ./pod-mount ]; then
  mkdir ./pod-mount
fi

read -p "Username on POD? " username
read -p "Folder you'd like to mount? (default: /) " path_on_pod

if [[ -z "${param// }" ]]; then
  path_on_pod="/"
fi

echo path_on_pod

sshfs -o allow_other,defer_permissions $username@stacker:$path_on_pod ./pod-mount
