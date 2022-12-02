#/bin/bash

echo "================================================================================="
#Create docker image dari Dockerfile
echo "Create docker image dari Dockerfile"
docker build -t item-app:v1 /Users/tiosetia/Documents/Dicoding/Microservices/project-1/a433-microservices
echo " "

echo "================================================================================="
#Melihat daftar image di local
echo "Melihat daftar image di local"
docker images
echo " "

echo "================================================================================="
#Login ke Github Packages
echo "Login ke Github Packages"
echo $CR_PAT | docker login ghcr.io -u tiosetiaatih --password-stdin
echo "Login berhasil!"
echo " "

echo "================================================================================="
#Mengubah nama image sesuai dengan format Github Packages
echo "Mengubah nama image sesuai dengan format Github Packages"
docker tag item-app:v1 ghcr.io/tiosetiaatih/item-app:v1
echo "Done Update"
echo " "

echo "================================================================================="
#Melihat daftar image di local
echo "Melihat daftar image di local"
docker images
echo " "

echo "================================================================================="
#Upload image ke Github Packages
echo "Upload image ke Github Packages"
docker push ghcr.io/tiosetiaatih/item-app:v1
echo " "
