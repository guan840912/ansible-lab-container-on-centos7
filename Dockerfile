FROM centos:7
RUN true \
    && yum update -y && yum install -y \
    passwd \
    openssl \
    openssh-server \
    net-tools \
    telnet \
    iptables \
    sudo \
    initscripts \
    && yum -y clean all \
    && true
RUN echo "root:newpasswd" | chpasswd
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N "" && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N "" && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N "" && ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ""
EXPOSE 22 80
CMD [ "/usr/sbin/sshd" ,"-D" ]
