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

ENV PATH=$PATH:$ANSIBLE_VENV/bin