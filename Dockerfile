FROM fedora:39

RUN dnf update -y && dnf upgrade -y
RUN echo max_parallel_downloads=20 >> /etc/dnf/dnf.conf

# My Essentials
RUN dnf install -y eza fish fzf git nautilus neofetch ranger tmux tree helix neovim python3-neovim vi vim vim-X11 vis

# Helpful to Have
RUN dnf install -y curl diffutils file hostname ncurses wget

# Languages
RUN dnf install -y python3-devel python3-pip python3-pudb gdb gcc cargo rustfmt

# Python Packages
RUN pip3 install automata-lib black frozendict jsonschema matplotlib mypy numpy pandas pdflatex py2cfg pygame python-Levenshtein reportlab requests scikit-bio scipy seaborn urllib3

# Import My Configs
# Perfect way to ensure this gets run when there are changes: https://stackoverflow.com/a/65762156
ADD "https://api.github.com/repos/christopherbrass/dotfiles/commits?per_page=1" latest_commit
RUN git clone https://github.com/christopherbrass/dotfiles.git
RUN bash dotfiles/setup_configs.sh