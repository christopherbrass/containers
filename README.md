# containers

### Usage

Run the following command in a bash terminal. Replace <REPO_BRANCH> with the branch of this repo you want to use. Each branch is a different docker container. Current options are `fedora`, `ubuntu`, and `arch`

```
sudo docker run --interactive --tty --rm --mount type=bind,source="$(pwd)"/,target=/your_code --workdir=/your_code ghcr.io/christopherbrass/containers:<REPO_BRANCH> fish
```
