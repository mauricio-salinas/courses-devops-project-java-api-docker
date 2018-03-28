FROM openjdk:8-jdk

RUN git clone https://github.com/MobDevCL/courses-devops-project-java-api

WORKDIR courses-devops-project-java-api

RUN ./gradlew build

EXPOSE 8080

CMD ./gradlew bootRun
