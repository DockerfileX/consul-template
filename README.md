# consul-template

## 1. 简要说明

基于hashicorp/consul-template镜像，配置了常用特性

## 2. 特性

1. Alpine 3.20
2. en_US.UTF-8
3. TZ=Asia/Shanghai
4. curl
5. telnet

## 3. 编译并上传镜像

```sh
docker buildx build --platform linux/arm64,linux/amd64 -t nnzbz/consul-template:0.39 --build-arg VERSION=0.39 . --push
```
