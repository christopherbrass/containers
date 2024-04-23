FROM archlinux:latest

RUN echo "y" | pacman -Sy
RUN echo "y" | pacman -S vim file
#RUN echo "y" | pacman -S python-pip
#RUN echo "y" | pacman -S python3-devel
RUN echo "y" | pacman -S python3 python-pip gcc
#RUN echo "y" | pacman -S cargo
#RUN echo "y" | pacman -S rustfmt
RUN echo "y" | pacman -S diffutils ncurses gdb fish tmux ranger
#RUN echo "y" | pacman -S vim-X11
RUN echo "y" | pacman -S git
#RUN echo "y" | pacman -S python3-pudb
RUN echo "y" | pacman -S fzf neofetch nautilus

RUN echo "y" | pacman -S python-levenshtein mypy python-black
#RUN pip3 install py2cfg
#RUN echo "y" | pacman -S python-automata-lib

RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

