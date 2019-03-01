FROM maven:3-jdk-8-alpine

WORKDIR /opt/carts

COPY . .

RUN mvn package \
    && mv target/carts.jar /run \
    && rm -rf *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
