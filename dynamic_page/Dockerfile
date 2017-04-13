FROM gradle:alpine

ADD awesome_application .

RUN gradle build

ENV JAVA_OPTS=""

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -jar build/libs/app.jar
