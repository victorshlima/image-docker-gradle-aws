# image-docker-gradle-aws

#Docker

docker build -t victorshlima/infnet-gitlab .
docker container ls -la
#cont - 24451a60ced4
#image
docker run --name infnet-register 6236c6a3a5f8


#-p 2222:2222 -p 80:80 -p 443:443

## --restart always - mlhor pratica?

#is necessary to run gitlab runner in local 
#https://docs.gitlab.com/runner/install/docker.html
docker run -d --name gitlab-runner --restart always \
-v /srv/gitlab-runner/config:/etc/gitlab-runner \
-v /var/run/docker.sock:/var/run/docker.sock \
gitlab/gitlab-runner:latest

------------------------------------------------------------------------------------------------
gerando a TAG e fazendo push
------------------------------------------------------------------------------------------------
#send image to docker
docker login
set user... pass

acess docker hub -  create a new repository

REPOSITORY                        TAG                 IMAGE ID       CREATED         SIZE
infnet-devops-project             infnet-gradle-aws   6236c6a3a5f8   2 hours ago     1.02GB

#usar o export ajuda

docker tag 6236c6a3a5f8  victation/infnet-gitlab:latest
description "docker push new-repo:tagname"

docker push victation/infnet-gitlab:latest




------------------------------------------------------------------------------------------------
### dentro do cotnainer gitlab-runner
docker exec -it gitlab-runner /bin/bash

gitlab-runner register

get the url and token
https://gitlab.com/victorshlima/infnet-devops-project/-/settings/ci_cd
isn't necessary set DESCRIPTION , TAG
- docker

victation/infnet-gitlab:latest

------------------------------------------------------------------------------------------------
acessar
https://gitlab.com/victorshlima/infnet-devops-project/-/settings/ci_cd

runner > expand

disable shared runner   


