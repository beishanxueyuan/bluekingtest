# 使用私有仓库的镜像作为基础镜像
FROM docker.xuanyuan.me/nginx:alpine

# 暴露端口
EXPOSE 80

# 启动命令（通常不需要写，nginx 镜像默认已有）
CMD ["nginx", "-g", "daemon off;"]
