FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y file
RUN apt-get install -y python3-pip
#RUN apt-get install -y python3-devel
RUN apt-get install -y gcc
RUN apt-get install -y cargo
RUN apt-get install -y rustfmt
RUN apt-get install -y diffutils
#RUN apt-get install -y ncurses
RUN apt-get install -y gdb
RUN apt-get install -y fish
RUN apt-get install -y tmux
RUN apt-get install -y ranger
RUN apt-get install -y vim-X11
RUN apt-get install -y git
RUN apt-get install -y python3-pudb
RUN apt-get install -y fzf
RUN apt-get install -y neofetch
RUN apt-get install -y nautilus
RUN pip3 install python-Levenshtein mypy black py2cfg automata-lib

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

