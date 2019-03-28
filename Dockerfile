FROM centos

RUN yum update -y
RUN yum install -y git

ADD .ssh /root/.ssh
RUN chmod 600 /root/.ssh/*

WORKDIR /usr/local
RUN git clone git@github.com:yybaske/relation_BIND.git


