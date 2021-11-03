# creating Docker repo for docker instalation
cat <<EOF > /etc/yum.repos.d/docker.repo 
[docker]
name=docker
baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/
gpgcheck=0
EOF

yum install docker-ce --nobest -y

systemtcl start docker

docker ps

docker run -dit --name myos centos:7
