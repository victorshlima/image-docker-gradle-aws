# image-docker-gradle-aws

#Build
## . é o local para onde vai ser a raiz da aplicação?
#victorshlima/infnet-gitlab
#imagem de base para a execução do pipeline no GITLAB

#taht way you will create the image and SET the tag at same time
docker build -t {image:tag} .
docker build -t victation/infnet-gitlab:1.0.x .
docker build -t victation/infnet-gitlab .
docker container ls -la

------------------------------------------------------------------------------------------------
docker build -t victation/infnet-gitlab .
#Successfully built 857815ea94f5
#Successfully tagged victation/infnet-gitlab:latest
#docker tag local-image:tagname new-repo:tagname
docker tag victation/infnet-gitlab:latest victation/infnet-gitlab:latest
#docker push new-repo:tagname
docker push victation/infnet-gitlab:latest
------------------------------------------------------------------------------------------------


docker build -t victation/infnet-gitlab .
#Successfully built 857815ea94f5
#Successfully tagged victation/infnet-gitlab:latest
#docker tag local-image:tagname new-repo:tagname
docker tag victation/infnet-gitlab:latest victation/infnet-gitlab:latest
#docker push new-repo:tagname
docker push victation/infnet-gitlab:latest




------------------------------------------------------------------------------------------------
#Tag gerando a TAG e fazendo push
------------------------------------------------------------------------------------------------

docker images
docker build -t infnet-gitlab:1.0.3 .
docker tag local-image:tagname new-repo:tagname
docker tag infnet-gitlab:1.0.3 victorshlima/infnet-gitlab:1.0.3
docker push infnet-gitlab:1.0.3
------------------------------------------------------------------------------------------------

#send image to docker
docker login
docker login -u <login> -p <password>

set user... pass

acess docker hub -  create a new repository

docker images

REPOSITORY                        TAG                 IMAGE ID       CREATED         SIZE
infnet-devops-project             infnet-gradle-aws   xxx_new_by_image   2 hours ago     1.02GB


docker tag 6236c6a3a5f8  victation/infnet-gitlab:latest
description "docker push new-repo:tagname"

docker push victation/infnet-gitlab:1.0.3



#usar o export ajuda

- description "docker push new-repo:1.0.X
  docker push victation/infnet-gitlab:1.0.x

------------------------------------------------------------------------------------------------
#gitlab-runner
#é uma imagem que executa o pipeline no gitlab
#gitlab/gitlab-runner:latest

#is necessary to run gitlab runner in local
#https://docs.gitlab.com/runner/install/docker.html
docker run -d --name gitlab-runner --restart always \
-v /srv/gitlab-runner/config:/etc/gitlab-runner \
-v /var/run/docker.sock:/var/run/docker.sock \
gitlab/gitlab-runner:latest


### dentro do cotnainer gitlab-runner
docker exec -it gitlab-runner /bin/bash

gitlab-runner register

get the url and token


https://gitlab.com/victorshlima/infnet-devops-project/-/settings/ci_cd

isn't necessary (BUT it's better)set DESCRIPTION , TAG
tag insert a TAG to facilitate the runner identification#
# it'hs possible had various runners and use a TAG to especify the corret runnet to use in the pipeline
victation/infnet-gitlab:1.0.X

Enter a executor...
- docker

victorshlima/infnet-gitlab:1.0.2
f5d58e4b782b


victation/infnet-gitlab:1.0.X

## se vc atualiza a versão da imagem vc vai ter atualziar o docker runner tbm
------------------------------------------------------------------------------------------------
acessar
https://gitlab.com/victorshlima/infnet-devops-project/-/settings/ci_cd

runner > expand

disable shared runner


#melhorias
1:19 -  configurar CACHE para o gradle video...225427



