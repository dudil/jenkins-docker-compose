FROM jenkins/jenkins:lts-jdk11

USER root
RUN apt update && apt install -y make apt-utils apt-transport-https ca-certificates \
        curl gnupg2 software-properties-common ruby docker.io 

USER jenkins
COPY --chown=jenkins:jenkins plugins.yml /usr/share/jenkins/ref/plugins.yml
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.yml