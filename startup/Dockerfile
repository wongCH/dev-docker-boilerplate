FROM debian:stable
RUN apt-get update && apt-get install -y gnupg software-properties-common wget -y unzip -y git -y

WORKDIR /app

RUN wget "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_linux_arm64.zip" -O terraform.zip
RUN unzip terraform.zip
RUN rm terraform.zip
RUN mv terraform /usr/local/bin