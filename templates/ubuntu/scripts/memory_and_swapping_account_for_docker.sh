#http://docs.docker.io/installation/ubuntulinux/#memory-and-swap-accounting
sed -i 's/^GRUB_CMDLINE_LINUX=""$/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/' /etc/default/grub
update-grub
