# WEB IDE 이미지 빌드및 도커허브 등록 가이드

## 1. 도커 빌드

```bash
# AMD64 빌드
docker buildx build --platform linux/amd64 \
--push \
-f Dockerfile.amd64 \
-t <DOCKER-ID>/cicd-devops-ide:amd64 .


# ARM64 빌드
docker buildx build --platform linux/arm64 \
--push \
-f Dockerfile.arm64 \
-t <DOCKER-ID>/cicd-devops-ide:arm64 .


# 매니페스트로 결합
docker manifest create <DOCKER-ID>/cicd-devops-ide:latest \
<DOCKER-ID>/cicd-devops-ide:amd64 \
<DOCKER-ID> /cicd-devops-ide:arm64

# 매니페스트 푸시 (멀티 아키텍처 지원을 위해)
docker manifest push <Your-Docker-Hub-ID>/cicd-devops-ide:latest
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