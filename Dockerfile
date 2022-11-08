# #Base Image
# FROM ubuntu:latest
#
# #Update APT repository & Install OpenSSH
# RUN apt update \
#     && apt install -y openssh-server
#
# #Establish the operating directory of OpenSSH
# RUN mkdir /var/run/sshd
#
# #Set Root password
# RUN echo 'root:root' | chpasswd
#
# #Allow Root login
# RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' \
#     /etc/ssh/sshd_config
#
# #SSH login fix
# # RUN sed 's@session\s*required\s*pam_loginuid.so@session optional \
# #     pam_loginuid.so@g' -i /etc/pam.d/sshd
#
# #expose port 22
# EXPOSE 22
#
# RUN apt install -y nodejs neovim
# # RUN apt install neovim
#
# #Commands to be executed by default
# CMD ["/usr/sbin/sshd","-D"]
FROM ubuntu:latest

# timezone
# RUN apt update && apt install -y tzdata; \
#     apt clean;

# sshd
RUN mkdir /var/run/sshd
RUN apt update
RUN apt install -y openssh-server
RUN sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config
RUN sed -i 's/^\(UsePAM yes\)/# \1/' /etc/ssh/sshd_config

RUN echo 'root:root' | chpasswd;
# entrypoint
# RUN { \
#     echo '#!/bin/bash -eu'; \
#     echo 'ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime'; \
#     echo 'echo "root:${ROOT_PASSWORD}" | chpasswd'; \
#     echo 'exec "$@"'; \
#     } > /usr/local/bin/entry_point.sh; \
#     chmod +x /usr/local/bin/entry_point.sh;
#
# ENV TZ Asia/Tokyo

# ENV ROOT_PASSWORD root

EXPOSE 22

# ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]
