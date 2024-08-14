FROM node:18

RUN apt-get update

RUN apt-get install -y openjdk-17-jdk

RUN npm install -g firebase-tools

WORKDIR /workspace

EXPOSE 4000 8080 9099 9199 5001

ENTRYPOINT [ "./entrypoint.sh" ]