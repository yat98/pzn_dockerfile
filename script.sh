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
