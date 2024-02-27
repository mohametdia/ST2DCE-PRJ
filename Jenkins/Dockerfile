# Use the latest Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to install Docker
USER root

# Install Docker CLI using the official Docker installation script
RUN curl -fsSL https://get.docker.com/ | sh

# Add Jenkins user to the Docker group
RUN usermod -a -G docker jenkins

# Switch back to the jenkins user
USER jenkins

#Installation of Jenkins plugins
#RUN /usr/local/bin/install-plugins.sh kubernetes workflow-aggregator git docker-workflow credentials-binding

#Jenkins launch
ENTRYPOINT ["tini", "--", "/usr/local/bin/jenkins.sh"]