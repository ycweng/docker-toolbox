# 使用 alpine 作為基本映像
FROM azul/zulu-openjdk-alpine:25

# 安裝必要的工具
RUN apk --no-cache add aws-cli
# 設定工作目錄
WORKDIR /app

# 命令示例：使用 ping 測試連通性
#CMD ["ping", "localhost"]
CMD ["/bin/bash", "-l"]
