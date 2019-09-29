FROM node:alpine AS builder
WORKDIR /app
ADD ./package.json ./
RUN npm install
ADD ./ ./
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html