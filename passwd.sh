#! /bin/bash

sed -i s'/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i s'/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart
passwd
