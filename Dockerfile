FROM fedora

RUN dnf install -y ShellCheck bash-completion bat cargo cflow cgdb clang clang-tools-extra cmake cppcheck cscope diffutils doxygen doxygen-doxywizard eza file fish gcc gcc-g++ gcovr gdb git gnupg2 graphviz helix htop httpd hostname iproute java-latest-openjdk kakoune llvm ltrace lynx make mc micro mtr nano nasm nc ncurses neovim nmap octave openjfx openssl-devel openssh-server pandoc perl poetry python3-black python3-devel python3-docopt python3-ipython python3-jedi python3-jupyter-core python3-matplotlib python3-mypy python3-numpy python3-pandas python3-pip python3-poetry python3-pudb python3-pygments python3-scapy python3-scikit* python3-scipy python3-seaborn python3-spyder python3-GitPython python3-Levenshtein qemu-* ranger rr rust rust-debugger-common rust-doc rust-gdb rust-lldb rust-src rustfmt rustup sbcl shfmt strace tmux traceroute valgrind vim vim-X11 vim-enhanced vim-filesystem vim-fugitive vim-jedi vim-nerdtree vim-powerline vis wget whois yasm zsh && dnf clean all # vim-syntastic*
# scikit-bio had a bug which created conflicts with python 3.12 (Fedora 39) but not Fedora 38's older python:
RUN pip3 install --no-cache-dir --upgrade assigner ete3 mediapy monkeytype mujoco py2cfg qiime-default-reference # scikit-bio
RUN pip3 install --no-cache-dir --upgrade --force jupyter jupyterlab notebook jupytext
RUN wget https://raw.githubusercontent.com/cyrus-and/gdb-dashboard/master/.gdbinit -O /root/.gdbinit
RUN sed -i '1s/^/set disassembly-flavor intel\n/' /root/.gdbinit
