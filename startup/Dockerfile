
FROM debian:stable
RUN apt-get update && apt-get install -y curl gnupg software-properties-common wget unzip git 
ARG TF=1.3.3
WORKDIR /app

RUN wget "https://releases.hashicorp.com/terraform/${TF}/terraform_${TF}_linux_arm64.zip" -O terraform.zip
RUN unzip terraform.zip
RUN rm terraform.zip
RUN mv terraform /usr/local/bin

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
RUN mv /tmp/eksctl /usr/local/bin

RUN  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

RUN echo 'alias kb=kubectl' >> ~/.bashrc
RUN echo 'alias ec=eksctl' >> ~/.bashrc
RUN echo 'alias tf=terraform' >> ~/.bashrc