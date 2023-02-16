#! /bin/bash
# Proyek Membangun Containerized Application dengan Docker

# Membuat Docker image dari Dockerfile yang tadi dibuat
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 carbonite12/item-app:v1

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u carbonite12 --password-stdin

# Mengunggah image ke Docker Hub
docker push carbonite12/item-app:v1