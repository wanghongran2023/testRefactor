FROM ubuntu:latest

RUN mkdir backend
COPY package-lock.json /backend/package-lock.json
COPY package.json /backend/package.json
COPY src/ /backend/src/
COPY mock/ /backend/mock/
COPY tsconfig.json /backend/tsconfig.json
COPY tslint.json /backend/tslint.json


WORKDIR /backend
RUN apt update
RUN apt install -y nodejs npm
RUN npm cache clean --force
RUN npm install -f


COPY start.sh /backend/start.sh
RUN chmod +x /backend/start.sh

EXPOSE 8080

ENTRYPOINT ["/backend/start.sh"]
