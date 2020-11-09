
# 注意：本Dockerfile用于演示如何使用Alauda DevOps流水线构建Vue应用，故没有选择使用容器进行两阶段构建

FROM nginx:stable-alpine

COPY ./dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80