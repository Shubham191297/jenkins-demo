FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install python3-pip -y

ENV ANSIBLE_VENV=/ansible_venv

RUN mkdir $ANSIBLE_VENV && \
    chown jenkins:jenkins $ANSIBLE_VENV && \
    apt-get install python3-venv -y

USER jenkins

RUN python3 -m venv $ANSIBLE_VENV

RUN $ANSIBLE_VENV/bin/pip3 install ansible

ENV PATH=$PATH:$ANSIBLE_VENV/

# Add Docker's official GPG key:
RUN apt-get update && apt-get install ca-certificates curl && \
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
RUN echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update && apt-get install docker-ce docker-compose-plugin -y

USER jenkins