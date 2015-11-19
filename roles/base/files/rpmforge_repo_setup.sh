#!/bin/sh
cd /home/vagrant
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -K rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -i rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
#rpmforge-release-0.5.3-1.el6.rf.*.rpm
#key=http://apt.sw.be/RPM-GPG-KEY.dag.txt
