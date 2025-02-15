# containers

### Usage

Run the following command in a bash terminal. Replace <REPO_BRANCH> with the branch of this repo you want to use. Each branch is a different docker container. Current options are `fedora`, `ubuntu`, and `arch`

Run `bash run.sh` to download the latest version of this container and run it. The directory you run this script in will be accessible in `/workspace` inside the container.

For convenience, here are the commands inside `run.sh`:
```bash
sudo docker pull ghcr.io/christopherbrass/containers:my_workspace

sudo docker run --interactive --tty --rm --mount type=bind,source="$(pwd)"/,target=/workspace --workdir=/workspace --name my_workspace_temp ghcr.io/christopherbrass/containers:my_workspace fish
```
