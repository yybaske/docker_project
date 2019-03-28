#!/bin/bash 

docker run -itd --name make-ssh-key centos

docker exec -it make-ssh-key /bin/bash >> 'EOF'
  yum -y update
  yum -y install git
  
  cd /root
  ssh-keygen -t rsa 
  ssh -T git@github.com
  ls -a /root/.ssh
  cat /root/.ssh/id_rsa.pub  
  exit
EOF


