FROM openjdk:latest
ADD target/travis-ci-build-push-docker-image.jar travis-ci-build-push-docker-image.jar
ENTRYPOINT ["java","-jar","travis-ci-build-push-docker-image.jar"]