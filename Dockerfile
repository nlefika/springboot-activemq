FROM frolvlad/alpine-oraclejdk8:slim
ENV APP_JAR_PATH='./build/libs/springboot-activemq-0.1.0-SNAPSHOT.jar'
ADD $APP_JAR_PATH app.jar
EXPOSE 8080 80 9003 9002
RUN sh -c 'touch /app.jar'
ENV APP_PROFILE=dev
ENV JAVA_OPTS="-Dhttp.proxyHost=awsproxy.eng.absa.co.za -Dhttp.proxyPort=3128 -Dhttps.proxyHost=awsproxy.eng.absa.co.za -Dhttp.nonProxyHosts=\"169.254.169.254|169.254.170.2|127.0.0.1,localhost|.eng.absa.co.za\" -Dhttps.proxyPort=3128 -Djava.security.egd=file:/dev/./urandom"
ENV APP_OPTS="-Dspring.profiles.active=$APP_PROFILE"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar $APP_OPTS /app.jar" ]
