# Cloud Run

This repository describes a basic Spring Boot application which can run 
on Google Cloud Run.

## Instructions
Provided you have Java installed, you can run the Spring Boot project
locally with `./mvnw spring-boot:run` and view it running when you
 open your browser on http://localhost:8080.
                                                                          
Alternatively you can build the Docker image locally
with `docker build -t cloudrun .` and then run it with
`docker run -it -e PORT=8080 -p 8080:8080 cloudrun` and view it again
via your browser on http://localhost:8080.
