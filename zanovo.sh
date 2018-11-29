docker stop $(docker ps -aq) 
docker rm jenkins 
docker rm jenkins-data
docker build -t identijenk .
docker run --name jenkins-data identijenk echo "qweqe" 
docker run -d --name jenkins -p 8080:8080 --volumes-from jenkins-data -v /var/run/docker.sock:/var/run/docker.sock identijenk
