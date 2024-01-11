# FROM
sudo docker build -t yattt/from from

#RUN
sudo docker build -t yattt/run run 
sudo docker build -t yattt/run run --progress=plain --no-cache  

#COMMAND
sudo docker build -t yattt/command command
sudo docker image inspect yattt/command 
sudo docker container create --name command yattt/command 
sudo docker container start command 
sudo docker container logs command  

#LABEL
sudo docker build -t yattt/label label
sudo docker image inspect yattt/label  

#ADD
sudo docker image rm yattt/add    
sudo docker container create --name add yattt/add 
sudo docker container start add
sudo docker container logs add   

#COPY
sudo docker build -t yattt/copy copy 
sudo docker container create --name copy yattt/copy 
sudo docker container start copy 
sudo docker container logs copy

#IGNORE
sudo docker build -t yattt/ignore ignore
sudo docker container create --name ignore yattt/ignore
sudo docker container start ignore    
sudo docker container logs ignore    

#EXPOSE
sudo docker build -t yattt/expose expose
sudo docker container create --name expose -p 8080:8080 yattt/expose
sudo docker container ls 

#ENV
sudo docker build -t yattt/env env 
sudo docker container create --name env --env APP_PORT=9090 -p 9090:9090 yattt/env
sudo docker container start env
sudo docker container logs env

#VOLUME
sudo docker build -t yattt/volume volume  
sudo docker image inspect yattt/volume
sudo docker container create --name volume --env APP_PORT=9090 -p 9090:9090 yattt/volume
sudo docker container start volume
sudo docker image inspect yattt/volume
sudo docker container inspect volume
sudo docker volume ls
#VOLUME BACKUP
sudo docker container start volume
sudo docker container exec -i -t volume /bin/sh   
sudo docker container run --rm --name ubuntu --mount "type=bind,source=/home/yat/Desktop/backup,destination=/backup" --mount "type=volume,source=b51a959ea89beb68824f3a0a357d0b49e4c2f03d6e5c62ccbceb45640b5f8708,destination=/logs" ubuntu:latest tar cvf /backup/backup.tar.gz /logs

#WORKDIR
sudo docker build -t yattt/workdir workdir
sudo docker container create --name workdir --env APP_PORT=9090 -p 9090:9090 yattt/workdir
sudo docker container start workdir
sudo docker container exec -i -t workdir /bin/sh 
sudo docker container stop workdir

#USER
sudo docker build -t yattt/user user
sudo docker container create --name user --env APP_PORT=8080 -p 8080:8080 yattt/user
sudo docker container start user
sudo docker container exec -i -t user /bin/sh 
sudo docker container stop user

#ARGUMENT
sudo docker build -t yattt/arg arg --build-arg app=index 
sudo docker container create --name arg -p 8080:8080 yattt/arg
sudo docker container start arg
sudo docker container exec -i -t arg /bin/sh 
sudo docker container stop arg



