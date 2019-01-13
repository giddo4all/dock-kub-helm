#!/bin/sh

apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
 add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu
#docker run -d -p 3030:80 tutum/hello-world
#curl -sL -w "%{http_code}" -I "localhost:3030" -o /dev/null
#docker stop $( docker ps -aq)
#docker rm $( docker ps -aq)

apt-get update &&  apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" |  tee -a /etc/apt/sources.list.d/kubernetes.list
 apt-get update
 apt-get install -y kubectl

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  
cp minikube /usr/local/bin && rm minikube

exit
