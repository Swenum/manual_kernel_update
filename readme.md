
[Vagrant Box CentOS7](https://app.vagrantup.com/Swenum/boxes/centos7_kernel) 

**Vagrant commands**
```bash
vagrant up
vagrant ssh
vagrant halt 
vagrant package --output centos7_kernel.box
vagrant cloud publish --release swenum/centos7_kernel  1.0 virtualbox centos7_kernel.box
```

**Connect VirtualBOX CD Addons in VPC**

```bash
mount -t iso9660 /dev/cdrom /mnt/cdrom/ 
bash VBoxLinuxAdditions.run
Verifying archive integrity... All good.
Uncompressing VirtualBox 6.0.16 Guest Additions for Linux........
VirtualBox Guest Additions installer
Removing installed version 6.0.16 of VirtualBox Guest Additions...
Copying additional installer modules ...
Installing additional modules ...
VirtualBox Guest Additions: Starting.
VirtualBox Guest Additions: Building the VirtualBox Guest Additions kernel
modules.  This may take a while.
VirtualBox Guest Additions: To build modules for other installed kernels, run
VirtualBox Guest Additions:   /sbin/rcvboxadd quicksetup <version>
VirtualBox Guest Additions: or
VirtualBox Guest Additions:   /sbin/rcvboxadd quicksetup all
VirtualBox Guest Additions: Building the modules for kernel 5.5.2

```
