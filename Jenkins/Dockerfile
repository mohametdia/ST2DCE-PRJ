# Utilisez l'image officielle Jenkins LTS comme base
FROM jenkins/jenkins:lts

# Passage à l'utilisateur root pour installer les paquets nécessaires
USER root

# Installation de Docker CLI
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz \
    && tar xzvf docker-20.10.9.tgz --strip 1 \
       -C /usr/local/bin docker/docker \
    && rm docker-20.10.9.tgz

# Installation de kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Utilisation de jenkins-plugin-cli pour installer les plugins Jenkins
# RUN jenkins-plugin-cli --plugins docker-workflow kubernetes git blueocean