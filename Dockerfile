FROM openjdk:latest
ADD target/travis-CI-build-push-docker-image.jar travis-CI-build-push-docker-image.jar
ENTRYPOINT ["java","-jar","travis-CI-build-push-docker-image.jar"]