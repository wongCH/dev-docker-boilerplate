
FROM debian:stable
RUN apt-get update && apt-get install -y gnupg software-properties-common wget -y unzip -y git -y curl -y tar -y

ARG TF=1.10.5
WORKDIR /app

RUN wget "https://releases.hashicorp.com/terraform/${TF}/terraform_${TF}_linux_arm64.zip" -O terraform.zip
RUN unzip terraform.zip
RUN rm terraform.zip
RUN mv terraform /usr/local/bin

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# Install EKSCTL
RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
RUN mv /tmp/eksctl /usr/local/bin

# Install Kubectl
RUN curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.0/2024-01-04/bin/darwin/amd64/kubectl
RUN chmod +x ./kubectl
RUN mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin


RUN echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

