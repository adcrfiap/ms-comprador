FROM openjdk:11
ENV SPRING_DATASOURCE_URL="jdbc:postgresql://dbcomprador:5432/comprador"
ENV SPRING_DATASOURCE_USERNAME="admin"
ENV SPRING_DATASOURCE_PASSWORD="admin"
ENV SPRING_JPA_HIBERNATE_DDL_AUTO="update"
EXPOSE 8080
ARG JAR_FILE=build/libs/ms-comprador-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} ms-comprador.jar
ENTRYPOINT ["java", "-jar", "/ms-comprador.jar"]