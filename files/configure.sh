#!/bin/bash

./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-python3interp=yes --enable-perlinterp=yes --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope --enable-xim --with-x --with-gnome --prefix=/usr/local/vim8

make -j2

make install

rm /usr/local/bin/vim

ln -s /usr/local/vim8/bin/vim /usr/local/bin/vim