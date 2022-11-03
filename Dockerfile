#SSH Server
#VERSION 0.0.1

#Base Image
FROM ubuntu:22.04

#Maintainer Info.
# MAINTAINER Ivan Chuang

#Update APT repository & Install OpenSSH
RUN apt update \
    && apt install -y openssh-server

#Establish the operating directory of OpenSSH
RUN mkdir /var/run/sshd

#Set Root password
RUN echo 'root:hellossh' | chpasswd

#Allow Root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' \
    /etc/ssh/sshd_config

#SSH login fix
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional \
    pam_loginuid.so@g' -i /etc/pam.d/sshd

#expose port 22
EXPOSE 22

RUN apt install nodejs

#Commands to be executed by default
CMD ["/usr/sbin/sshd","-D"]
