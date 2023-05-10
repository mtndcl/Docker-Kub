FROM openjdk:11
ADD target/MyApp-0.0.1-SNAPSHOT.jar app.jar

RUN mkdir /metindemir

VOLUME /metindemir
COPY  src/main/resources/static/Apoem.txt /metindemir/
COPY  src/main/resources/templates/Aview.js /metindemir/



ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
