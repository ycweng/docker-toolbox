# 使用 alpine 作為基本映像
FROM node:22.22.3-alpine

# 安裝必要的工具
RUN apk --no-cache add iputils curl netcat-openbsd aws-cli bash git
