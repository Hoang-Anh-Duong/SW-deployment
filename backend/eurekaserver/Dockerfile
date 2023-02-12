FROM openjdk:11
WORKDIR /usr/src/apigateway
#COPY /config /
COPY /target/*.jar ./apigateway.jar
CMD ["java", "-jar", "apigateway.jar"]
