#
# Build stage
#
FROM openjdk:latest
#RUN apt-get update && apt-get -y upgrade
#COPY ./* /usr/src/mymaven/

#WORKDIR /usr/src/mymaven
#CMD ["mvn clean install"]
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
#FROM openjdk:11-jre-slim
#COPY --from=build /home/app/target/demo-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
#CMD ["./mvnw spring-boot:run"]
#ENTRYPOINT ["tail -f *"]
