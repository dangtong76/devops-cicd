# CICD 실습 환경 구성 가이드

## 1. 도커 빌드

```bash
docker build -t dangtong76/cloud-cicd-ide .

docker push dangtong76/cloud-cicd-ide
```


## 2. 도커 볼륨 만들기

```bash
docker volume create --opt device=/Users/dangtongbyun/Library/CloudStorage/GoogleDrive-dbyun@redhat.com/내 드라이브/05.Lecture/cicd/devops-cicd/storage/devops-cicd-apps --opt o=bind --opt type=none devops-cicd-apps

docker volume create --opt device=/Users/dangtongbyun/Library/CloudStorage/GoogleDrive-dbyun@redhat.com/내 드라이브/05.Lecture/cicd/devops-cicd/storage/devops-cicd-vscode --opt o=bind --opt type=none devops-cicd-vscode
```


## 3. 도커 컨테이너 실행

```bash
docker-compose up -d
```