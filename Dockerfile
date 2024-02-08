FROM maven:3.8.5-openjdk-17

WORKDIR /app

COPY . .

RUN mvn clean install -Dspring.profiles.active=test

EXPOSE 8080

CMD mvn spring-boot:run -Dspring-boot.run.profiles=dev
