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

COPY init_aws_cli.sh /backend/init_aws_cli.sh
RUN chmod +x /backend/init_aws_cli.sh
COPY start.sh /backend/start.sh
RUN chmod +x /backend/start.sh

RUN apt-get update && apt-get install -y less vim curl unzip sudo
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install

EXPOSE 80

ENTRYPOINT ["/backend/start.sh"]
