ARG VERSION

# 基础镜像
FROM --platform=${TARGETPLATFORM} hashicorp/consul-template:${VERSION}

# 作者及邮箱
# 镜像的作者和邮箱
LABEL maintainer="nnzbz@163.com"

USER root
COPY ./run.sh /
RUN chmod +x /run.sh
RUN /run.sh