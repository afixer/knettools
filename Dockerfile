FROM ubuntu:latest

RUN apt-get update && apt-get install -y iputils-ping dnsutils net-tools curl

# Install kubectl
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
RUN # This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
RUN echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update && apt-get install -y kubectl

