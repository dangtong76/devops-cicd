# show build version
docker buildx version

# enable build instancd
docker buildx create --name mybuilder --use

# Basic build command
docker build -t dangtong76/cloud-cicd-ide .

# Create the builder
docker buildx build  --builder multi-builder --platform linux/amd64,linux/arm64  -t dangtong76/cloud-cicd --push .
docker buildx build  --platform linux/amd64,linux/arm64  -t dangtong76/cloud-cicd --push .

# Seperate Build and merge to latest Tag
docker buildx build -f Dockerfile.amd64 --platform linux/amd64 -t dangtong76/cloud-cicd-ide:amd64 --push .
docker buildx build -f Dockerfile.arm64 --platform linux/arm64 -t dangtong76/cloud-cicd-ide:arm64 --push .
docker buildx imagetools create  -t dangtong76/cloud-cicd-ide:latest dangtong76/cloud-cicd-ide:amd64 dangtong76/cloud-cicd-ide:arm64