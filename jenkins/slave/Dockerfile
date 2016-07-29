FROM docker:1.11
MAINTAINER UPMC Enterprises (Steve Sloka - slokas@upmc.edu)

ENV JENKINS_SWARM_VERSION 2.0

RUN apk add --update \
    libstdc++ \
		bash \
		git \
		gcc \
		build-base \
		openjdk8 \
		nodejs \
		python \
		py-pip \
		openssh \
		supervisor \
	  && rm -rf /var/cache/apk/*

RUN npm install -g gulp grunt bower

# Install AWS CLI
RUN pip install awscli && pip install awsebcli

RUN curl --create-dirs -sSLo /usr/share/jenkins/swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/$JENKINS_SWARM_VERSION/swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar \
  && chmod 755 /usr/share/jenkins

COPY jenkins-slave.sh /usr/local/bin/jenkins-slave.sh

VOLUME /home/jenkins-slave

#RUN mkdir -p /root/.aws
#COPY config /root/.aws/config

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf supervisord.conf
COPY copy-secrets.sh /usr/local/bin/copy-secrets.sh

CMD ["/usr/bin/supervisord"]
