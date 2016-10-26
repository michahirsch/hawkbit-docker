FROM openjdk:8-jre-alpine
ARG DOCKER_TAG=LATEST

RUN apk --update add curl	

RUN mkdir /opt
RUN mkdir /opt/hawkbit

RUN export

RUN if [ -z "$DOCKER_TAG" ]; then echo RELEASE; else echo SNAPSHOT; fi

#RUN if [ -z "$DOCKER_TAG" ]; \
#  then curl -f -o /opt/hawkbit/hawkbit-example-app.jar -L https://repo.eclipse.org/service/local/artifact/maven/redirect?r=hawkbit-releases&g=org.eclipse.hawkbit&a=hawkbit-example-app&v=$DOCKER_TAG; \
#  else curl -f -o /opt/hawkbit/hawkbit-example-app.jar -L 'https://repo.eclipse.org/service/local/artifact/maven/redirect?r=hawkbit-snapshots&g=org.eclipse.hawkbit&a=hawkbit-example-app&v=LATEST'; \
#  fi

EXPOSE 8080

CMD ["java", "-jar", "/opt/hawkbit/hawkbit-example-app.jar"]
