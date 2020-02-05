sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl  restart sshd
yum install -y epel-release
uname -r > /root/kernel.txt
yum update       
yum install -y patch xz-utils kernel-devel kernel-headers gcc make dkms perl bzip2 ncurses-devel  bc bison flex elfutils-libelf-devel openssl-devel grub2 wget curl iotop mc htop screen  
cd /usr/src/ && wget https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.5.2.tar.gz && tar -xvf linux-5.5.2.tar.gz
yum install -y http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
yum --enablerepo elrepo-kernel install kernel-ml -y
grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
cp /boot/config-`uname -r` /usr/src/linux-5.5.2/.config 
cd /usr/src/linux-5.5.2 && make olddefconfig &&  make -j5 && make modules_install install
#ls -l /boot/ | tail -n 4
grub2-set-default 0
	     

