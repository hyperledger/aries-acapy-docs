FROM node:latest
WORKDIR /app
COPY . .
RUN chmod +x ./scripts/build-docker.sh && /bin/bash ./scripts/build-docker.sh
EXPOSE 3000