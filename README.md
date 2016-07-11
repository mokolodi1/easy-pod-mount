# Easily mount POD locally

This repo contains the scripts necessary to easily mount and dismount POD (UCSC's VPN) to your local computer. This means it will show up as a regular folder and you can navigate it with Finder.

## Installation

1. Install OSXFUSE and SSHFS from [this website](http://osxfuse.github.io/). (OSXFUSE and SSHFS are two seperate programs. Look on the right where it says "Stable Releases")
3. Connect to POD using Tunnelblick. The following steps will not work if you are not connected to POD.
2. Download this git repo by running `git clone https://github.com/mokolodi1/easy-pod-mount/` or by clicking "Download ZIP" (above the list of files on the right).
4. Navigate to folder you downloaded in your terminal. (ex. `cd easy-pod-locally`)
5. Type `./mount_pod.sh` into your terminal. This will prompt you for your username on POD as well as the folder you wish to mount. If you don't know what folder you want to mount, leave that option blank and the root folder of POD will be mounted (`/`).
6. Woohoo! You should now have a folder called `pod-mount` with the folder you entered mounted there. (Protip: to open the current directory in Finder, type `open .`).
7. When you want to disconnect from POD, run `./unmount_pod.sh`, which will unmount the folder from `pod-mount`.

## FAQs

#### What is this `~` thing?

In the terminal, the tilde refers to the location of home directory. For example, your desktop is located at `~/Desktop`. To see the location of your home directory type `echo ~`.

#### What is this `/` thing?

In the terminal, `/` refers to the root directory of the computer. On Mac OS, programs are installed to `/Applications` and home folders are located at `/Users/username`.

#### I'm trying to run a file but am getting a "Permission denied" error

Try changing the permissions for the file using `chmod 755 file_name`. For example if you're trying to call `./mount_pod.sh`, run `chmod 755 mount_pod.sh`.
