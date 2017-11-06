FROM andyorz/minimal-java
VOLUME /tmp
EXPOSE 8080
ADD build/libs/spring-boot-petstore-2.17.0-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
