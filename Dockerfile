FROM frolvlad/alpine-oraclejdk8:slim
ENV APP_JAR_PATH='./build/libs/springboot-activemq-0.1.0-SNAPSHOT.jar'
ADD $APP_JAR_PATH app.jar
EXPOSE 8080 80 9003 9002
RUN sh -c 'touch /app.jar'
ENV APP_PROFILE=dev
ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
ENV APP_OPTS="-Dspring.profiles.active=$APP_PROFILE"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar $APP_OPTS /app.jar" ]
