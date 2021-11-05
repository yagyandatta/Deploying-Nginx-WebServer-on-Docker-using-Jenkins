# creating Docker repo for docker instalation
sudo cat << EOF > /etc/yum.repos.d/docker.repo
[docker]
name=docker
baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/
gpgcheck=0
EOF

sudo yum install docker-ce --nobest -y

sudo systemctl restart docker

sudo docker ps

sudo docker run -dit --name myos2 -p 8085:80 centos:7
sudo docker exec -i myos2  yum install httpd  -y
sudo docker exec -i myos2  yum install net-tools  -y
sudo docker cp  /root/jenkins/index.html  myos2:/var/www/html/
sudo docker exec -i myos2  /usr/sbin/httpd
