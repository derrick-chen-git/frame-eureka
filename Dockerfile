FROM openjdk:8-jre-slim
MAINTAINER derrick

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/frame-eureka-*.jar /frame-eureka.jar

ENTRYPOINT ["sh","-c","java -jar /frame-eureka.jar $PARAMS"]