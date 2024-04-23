FROM ubuntu:latest

RUN apt-get install -y vim file python3-pip python3-devel gcc cargo rustfmt diffutils ncurses gdb fish tmux ranger vim-X11 git python3-pudb fzf neofetch nautilus git
RUN pip3 install python-Levenshtein mypy black py2cfg automata-lib

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

