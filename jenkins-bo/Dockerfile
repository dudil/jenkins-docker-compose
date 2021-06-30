FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common \
       ruby
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli

RUN mkdir -p /var/jenkins_home
RUN chown -R jenkins:jenkins /var/jenkins_home

USER jenkins

COPY --chown=jenkins:jenkins plugins.yml /usr/share/jenkins/ref/plugins.yml
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.yml
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

COPY --chown=jenkins:jenkins jenkins-config.yaml /var/casc_configs/jenkins-config.yaml
ENV  CASC_JENKINS_CONFIG=/var/casc_configs/jenkins-config.yaml
