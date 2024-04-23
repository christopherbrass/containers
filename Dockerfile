FROM archlinux:latest

RUN pacman -S vim file
RUN pacman -S python3-pip
RUN pacman -S python3-devel
RUN pacman -S gcc
RUN pacman -S cargo
RUN pacman -S rustfmt
RUN pacman -S diffutils
RUN pacman -S ncurses
RUN pacman -S gdb
RUN pacman -S fish
RUN pacman -S tmux
RUN pacman -S ranger
RUN pacman -S vim-X11
RUN pacman -S git
RUN pacman -S python3-pudb
RUN pacman -S fzf
RUN pacman -S neofetch
RUN pacman -S nautilus






RUN pip3 install python-Levenshtein mypy black py2cfg automata-lib

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

