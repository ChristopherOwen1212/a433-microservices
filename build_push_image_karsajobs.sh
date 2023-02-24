#! /bin/bash
# Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes

# Membuat Docker image dari Dockerfile yang disediakan
docker build -t carbonite12/karsajobs:latest .

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u carbonite12 --password-stdin

# Mengunggah image ke Docker Hub
docker push carbonite12/karsajobs:latest