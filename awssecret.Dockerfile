# 使用 alpine 作為基本映像
FROM alpine:latest

ARG USER_ID=1000
ARG GROUP_ID=1000
ARG USER_NAME=appuser
RUN addgroup -g 1000 appuser && \
    adduser -u 1000 appuser -G appuser -D


# 安裝必要的工具
RUN apk --no-cache add curl aws-cli bash kubectl
COPY motd /etc/motd
RUN echo "cat /etc/motd" >> ~/.bashrc
# 設定工作目錄
WORKDIR /app

# 命令示例：使用 ping 測試連通性
#CMD ["ping", "localhost"]
USER ${USER_NAME}
CMD ["/bin/bash", "-l"]
