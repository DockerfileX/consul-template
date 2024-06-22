ARG VERSION

# 基础镜像
FROM --platform=${TARGETPLATFORM} hashicorp/consul-template:${VERSION}

# 作者及邮箱
# 镜像的作者和邮箱
LABEL maintainer="nnzbz@163.com"
# 镜像的版本
LABEL version=${VERSION}
# 镜像的描述
LABEL description="consul-template v${VERSION}"

COPY ./run.sh /bin/
RUN chmod +x /bin/run.sh && /bin/run.sh