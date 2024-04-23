FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim file python3-pip gcc cargo rustfmt diffutils gdb fish tmux ranger git
RUN apt-get install -y python3-pudb fzf neofetch nautilus
RUN apt-get install -y python-Levenshtein mypy black py2cfg automata-lib
#RUN apt-get install -y python3-devel 
#RUN apt-get install -y ncurses
#RUN apt-get install -y vim-X11

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

