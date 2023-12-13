FROM maven AS BUILD_IMAGE
RUN cd ../../
COPY ./products-service products-MS
RUN cd products-MS && mvn install -B

FROM openjdk:8-jdk-alpine
LABEL "Project"="Product-Service"
LABEL "Author"="Sergio"
WORKDIR /app
COPY --from=BUILD_IMAGE products-MS/target/products-service-example-0.0.1-SNAPSHOT.jar /app/products-service.jar
EXPOSE 8080
CMD ["java","-jar", "/app/products-service.jar"]