FROM openjdk:8-jre-alpine
ARG DOCKER_TAG=LATEST

RUN apk --update add curl	

RUN mkdir /opt
RUN mkdir /opt/hawkbit

ADD /opt/hawkbit/hawkbit-example-app.jar /opt/hawkbit/hawkbit-example-app.jar

EXPOSE 8080

CMD ["java", "-jar", "/opt/hawkbit/hawkbit-example-app.jar"]
