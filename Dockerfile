FROM amazoncorretto:19.0.1

CMD ./gradlew build

RUN mkdir /app

WORKDIR /app

COPY build/libs/*-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8080