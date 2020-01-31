FROM maven:3.6.3-jdk-13 as builder

# Copy local code to the container image.
WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build a release artifact.
RUN mvn package -DskipTests

FROM adoptopenjdk/openjdk13:jdk-13_33-alpine-slim

COPY --from=builder /app/target/cloudrun-1.0.0.jar /cloudrun.jar

# Run the web service on container startup.
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/cloudrun.jar"]
