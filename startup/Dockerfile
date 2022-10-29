
FROM debian:stable
RUN apt-get update && apt-get install -y gnupg software-properties-common wget -y unzip -y git -y

ARG TF=1.3.3
WORKDIR /app

RUN wget "https://releases.hashicorp.com/terraform/${TF}/terraform_${TF}_linux_arm64.zip" -O terraform.zip
RUN unzip terraform.zip
RUN rm terraform.zip
RUN mv terraform /usr/local/bin