FROM openjdk:8
FROM maven:3
WORKDIR watchlist
COPY . .
RUN mvn clean install
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./target/watchlist-0.0.1-SNAPSHOT.jar"]
