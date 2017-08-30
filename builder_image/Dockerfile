FROM gradle:alpine AS builder
ADD awesome_application .
RUN gradle build

FROM openjdk:jre-alpine
ENV JAVA_OPTS=""
COPY --from=builder /home/gradle/build/libs/app.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar /app/app.jar
