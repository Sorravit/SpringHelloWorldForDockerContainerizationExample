zFROM adoptopenjdk/openjdk8

ADD build/libs/SpringHelloWorldForDockerContainerizationExample-0.0.1-SNAPSHOT.jar HelloWorld.jar
# RUN yum update -y && yum clean all

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "HelloWorld.jar"]
