FROM gradle:jdk11
MAINTAINER  "vlima@<victorshlima@gmail.com>"

RUN apt-get update && apt-get -y install groff #improve STDOUT
RUN apt-get install awscli -y