FROM fedora:41

RUN yum install openssh-server -y

RUN useradd remote_user && \
	echo "1234" | passwd remote_user --stdin && \
	mkdir /home/remote_user/.ssh && \
	chmod 700 /home/remote_user/.ssh

COPY remote_key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
	chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A

RUN yum install mysql -y

RUN yum -y install python3-pip && \
    pip3 install --upgrade pip && \
	pip3 install awscli --upgrade

CMD ["/usr/sbin/sshd", "-D"]
