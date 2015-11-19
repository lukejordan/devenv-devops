#!/bin/sh
#sudo yum groupinstall "Development Tools"
#sudo yum install zlib-devel perl-ExtUtils-MakeMaker asciidoc xmlto openssl-devel
cd ~
#wget -O git.zip https://github.com/git/git/archive/master.zip
#unzip git.zip
cd git-master
#wget -o /opt/tmp/
make configure
./configure --prefix=/usr/local
make all doc
sudo make install install-doc install-html
