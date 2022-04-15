FROM gradle:jdk11
MAINTAINER  "vlima@<victorshlima@gmail.com>"

RUN apt-get update
#Corrigido a instalação do aws
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&   unzip awscliv2.zip && ./aws/install
RUN aws --version
RUN apt-get update && apt-get -y install groff #imporve STDOUT

COPY configure_aws.sh .
RUN chmod +x configure_aws.sh
RUN pwd
RUN ls
