FROM openjdk:8-jdk-alpine
VOLUME /tmp
MAINTAINER Master Lemmi <lemzki@gmail.com>
ADD build/libs/*.jar app.jar

ENV JAVA_OPTS=""
ENV SPRING_PROFILE="default"

EXPOSE 8761

ENTRYPOINT exec java $JAVA_OPTS \
 -Djava.security.egd=file:/dev/./urandom \
 -Dspring.profiles.active=$SPRING_PROFILE \
 -jar app.jar