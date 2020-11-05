# ベースイメージ
FROM openjdk:jdk-alpine
# ラベル指定
LABEL LABELDESC="DOCKERFILE TEST."
RUN echo Dockerfile見てるなう
ENV JAVA_OPTS=""
#結構最初の方
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar ./build/libs/notapp-0.0.1-SNAPSHOT.jar"]

COPY ./build/libs/notapp-0.0.1-SNAPSHOT.jar notapp.jar
#VOLUME [ "/var" ]
#だめ
#ENTRYPOINT ["java", "-jar", "build/libs/notapp-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT [ "sh", "-c", "java -jar build/libs/notapp-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT [ "sh", "-c", "java -jar notapp.jar"]
