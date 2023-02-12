FROM openjdk:11
WORKDIR /usr/src/apigateway
COPY /config ./config
COPY /i18n ./i18n
COPY /target/*.jar ./apigateway.jar
CMD ["java", "-jar", "apigateway.jar"]
