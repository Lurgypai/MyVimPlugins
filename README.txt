Usage: ./install.sh

Install vim with python support, and my plugins.

Requires:
git
python3
python3-dev
make
gcc
libncurses-dev
cmake
golang
mono-complete
nodejs
npm
default-jdk

These should all be installable using apt without much difficulty.

YouCompleteMe requires a list of compiler flags when working with C and C++. I've included a simple config file (.ycm_extra_congif.py) that contains flags for C.
