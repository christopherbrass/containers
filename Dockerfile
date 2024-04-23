FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim file python3-pip python3-dev gcc cargo rustfmt diffutils gdb fish tmux ranger git python3-pudb fzf neofetch nautilus

RUN pip3 install python-Levenshtein mypy black py2cfg automata-lib

RUN apt-get install -y libncurses5-dev libncursesw5-dev

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

