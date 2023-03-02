FROM ubuntu:latest

# sshd
RUN apt update
RUN apt install -y openssh-server vim
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN service ssh start

# ENTRYPOINT service ssh start 

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
