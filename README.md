# Cloud Run

This repository describes a basic Spring Boot application which can run 
on Google Cloud Run.

## Instructions
### Local
Provided you have Java installed, you can run the Spring Boot project
locally with `./mvnw spring-boot:run` and view it running when you
 open your browser on http://localhost:8080.
 
Another way to run this project is to compile it via
`./mvnw clean compile` and run directly with Java via
`java -jar target/cloudrun-1.0.0.jar`.
                                                                          
Alternatively you can build the Docker image locally
with `docker build -t cloudrun .` and then run it with
`docker run -it -e PORT=8080 -p 8080:8080 cloudrun` and view it again
via your browser on http://localhost:8080.

### Google Cloud
Provided you have the Google Cloud SDK installed which includes the 
Google Cloud CLI, you can submit a build to Cloud Build which will
deploy the application to Cloud Run as well.

To do this execute: `gcloud builds submit --config=cloudbuild.yaml`.
It assumes an environment variable `$PROJECT_ID` is set with the project
id you want to deploy to.