FROM archlinux:latest

RUN pacman -S vim file python3-pip gcc cargo rustfmt diffutils gdb fish tmux ranger git python3-pudb fzf neofetch nautilus
RUN pip3 install python-Levenshtein mypy black py2cfg automata-lib

RUN pacman -S python3-devel
RUN pacman -S ncurses
RUN pacman -S vim-X11


RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

