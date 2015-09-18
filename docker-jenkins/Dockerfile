FROM jenkinsci/jenkins:1.627
#FROM jenkins

## HP Corp Proxy
#ENV http_proxy http://web-proxy.corp.hp.com:8080
#ENV https_proxy https://web-proxy.corp.hp.com:8080
#ENV no_proxy hp.com,hpqcorp.net,localhost,127.0.0.1


USER root

RUN apt-get update && \
    apt-get install -y \
      git \
      libyaml-dev \
      libpython-dev \
      python-dev \
      python-pip \
      wget \
      zip

RUN pip install \
      ansible \
      gitconfig \
      GitPython \
      jenkins-job-builder \
      python-jenkins \
      PyYAML \
      virtualenv

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER jenkins

