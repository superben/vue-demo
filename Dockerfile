
# 注释：原有两阶段编译，已经在Jenkinsfile里完成，故注释掉。
# build stage
# FROM node:lts-alpine as build-stage
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build

# production stage
FROM nginx:stable-alpine

# 注释：用于调试目的
# RUN ls -al

COPY ./dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
