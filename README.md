# travisCI-build-push-docker_image

integrate with TRAVIS-CI to automated build and push docker image to docker hub:
1. create Dockerfile
2. create .travis.yml file on the root directory 

          language: java
          jdk:
            - openjdk8
          
          services:
            - docker
          
          # Pre-testing installs
          install:
            - echo "installed nothing....."
          
          # Scripts to be run such as tests
          before_script:
            - echo "before script is nothiiiiing...."
          
          script:
            - ./mvnw clean install
            - docker --version # print the version for logging
            - docker build -t travis-ci-build-push-docker-image .
            - docker tag travis-ci-build-push-docker-image thiethaa/travis-ci-build-push-docker-image:v.1.2.3
          
          after_success:
            - echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
            - docker push thiethaa/travis-ci-build-push-docker-image:v.1.2.3

3. on the Travis-CI console for travis-ci-build-push-docker-image repository ==> settings ==> Environtment Variables (set the docker credential)==> add

        DOCKER_PASSWORD
        DOCKER_USERNAME
        
4. create new docker hub repo with name thiethaa/travis-ci-build-push-docker-image



NB: common error : cant push to docker hub ===> make sure version on the tag step and push step is match
