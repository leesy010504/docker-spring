FROM openjdk:11
LABEL maintainer="leesy010504"
ARG JAR_FILE=build/libs/hello-spring-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} docker-spring.jar
ENTRYPOINT ["java","-jar","/docker-spring.jar"]
