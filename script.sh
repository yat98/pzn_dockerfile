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