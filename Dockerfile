FROM maven AS BUILD_IMAGE
WORKDIR /products-MS
RUN cd products-service
COPY pom.xml ../products-MS
COPY src ../products-MS
RUN mvn install -B

FROM openjdk:8-jdk-alpine
LABEL "Project"="Product-Service"
LABEL "Author"="Sergio"
WORKDIR /app
COPY --from=BUILD_IMAGE products-MS/target/products-service-example-0.0.1-SNAPSHOT.jar /app/products-service.jar
EXPOSE 8080
CMD ["java","-jar", "/app/products-service.jar"]