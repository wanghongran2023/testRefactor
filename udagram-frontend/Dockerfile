FROM ubuntu:latest

RUN mkdir frontend
COPY ionic.config.json /frontend/ionic.config.json
COPY src/ /frontend/src/
COPY udagram_tests/ /frontend/udagram_tests/
COPY angular.json /frontend/angular.json
COPY package-lock.json /frontend/package-lock.json
COPY tsconfig.json /frontend/tsconfig.json
COPY e2e/ /frontend/e2e/
COPY package.json /frontend/package.json
COPY tslint.json /frontend/tslint.json

WORKDIR /frontend
RUN apt update
RUN apt install -y nodejs npm
RUN npm cache clean --force
RUN npm install -f
RUN npm install -g @ionic/cli

ENV APP_HOME=/frontend
COPY start.sh /frontend/start.sh
RUN chmod +x /frontend/start.sh

EXPOSE 8080

ENTRYPOINT ["/frontend/start.sh"]
