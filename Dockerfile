FROM archlinux:latest

# sshd
# RUN apt update
# RUN apt install -y openssh-server vim
# # RUN mkdir /var/run/sshd
# RUN echo 'root:root' | chpasswd
# RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
# RUN service ssh start

# ENTRYPOINT service ssh start 

RUN pacman -Syy
RUN pacman -S --noconfirm openssh
RUN /usr/bin/ssh-keygen -A

RUN echo 'root:root' | chpasswd
RUN sed -i -e 's/^UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
# RUN systemctl start sshd
# RUN sed -i \
#         -e 's/^#*\(PermitRootLogin\) .*/\1 yes/' \
#         -e 's/^#*\(PasswordAuthentication\) .*/\1 yes/' \
#         -e 's/^#*\(PermitEmptyPasswords\) .*/\1 yes/' \
#         -e 's/^#*\(UsePAM\) .*/\1 no/' \
#         /etc/ssh/sshd_config
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
