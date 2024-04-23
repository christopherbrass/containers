FROM archlinux:latest

RUN echo "y" | pacman -Sy
RUN echo "y" | pacman -S vim
RUN echo "y" | pacman -S file
RUN echo "y" | pacman -S python-pip
#RUN echo "y" | pacman -S python3-devel
RUN echo "y" | pacman -S python3
RUN echo "y" | pacman -S gcc
#RUN echo "y" | pacman -S cargo
#RUN echo "y" | pacman -S rustfmt
RUN echo "y" | pacman -S diffutils
RUN echo "y" | pacman -S ncurses
RUN echo "y" | pacman -S gdb
RUN echo "y" | pacman -S fish
RUN echo "y" | pacman -S tmux
RUN echo "y" | pacman -S ranger
#RUN echo "y" | pacman -S vim-X11
RUN echo "y" | pacman -S git
#RUN echo "y" | pacman -S python3-pudb
RUN echo "y" | pacman -S fzf
RUN echo "y" | pacman -S neofetch
RUN echo "y" | pacman -S nautilus






#RUN pip3 install python-Levenshtein    
RUN pip3 install mypy
RUN pip3 install black
RUN pip3 install py2cfg
RUN pip3 install automata-lib




RUN exec fish
RUN echo "alias ls 'ls -1 --color=auto --group-directories-first'" >> ~/.config/fish/config.fish

# wget dotfiles?

