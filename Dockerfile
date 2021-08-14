#FROM openjdk:11-slim
#COPY target/*.jar app.jar
#CMD java -jar app.jar

FROM adoptopenjdk/openjdk11:alpine-jre
#VOLUME /tmp
MAINTAINER haritech.com
ARG JAR_FILE=target/config-demo.jar
#WORKDIR /opt/app
#COPY ${JAR_FILE} /var/lib/jenkins/workspace/spring-gradle-docker
ADD ${JAR_FILE} config-demo.jar
ENTRYPOINT ["java","-jar","config-demo.jar"]
EXPOSE 8081
#docker run -d --restart=always -p 8081:8081 harilearning1989/spring-rest-oracle-k8s