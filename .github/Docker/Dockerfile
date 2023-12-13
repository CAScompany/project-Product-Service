FROM openjdk:8-jdk-alpine
LABEL "Project"="Product-Service"
LABEL "Author"="Sergio"
WORKDIR /app
COPY ./products-service-example.jar /app/products-service.jar
EXPOSE 8080
CMD ["java","-jar", "/app/products-service.jar"]