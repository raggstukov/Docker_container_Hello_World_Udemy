FROM ubuntu

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk

COPY HelloWorld.java HelloWorld.java
RUN javac HelloWorld.java

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]