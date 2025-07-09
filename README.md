# CICD 실습 환경 구성 가이드

## 1. 도커 빌드

```bash
# AMD64 빌드
docker buildx build --platform linux/amd64 -f Dockerfile.amd64 -t myimage:amd64 .

# ARM64 빌드
docker buildx build --platform linux/arm64 -f Dockerfile.arm64 -t myimage:arm64 .

# 매니페스트로 결합
docker manifest create <Your-Docker-Hub-ID>/cicd-devops-ide:latest <Your-Docker-Hub-ID>/cicd-devops-ide:amd64 <Your-Docker-Hub-ID>/cicd-devops-ide:arm64
```


## 2. 도커 볼륨 만들기

```bash
docker volume create devops-cicd-apps
docker volume create devops-cicd-vscode
```


## 3. 도커 컨테이너 실행

```bash
docker compose up -d
```