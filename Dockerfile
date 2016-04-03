FROM java
MAINTAINER Ray Krueger <raykrueger@gmail.com>

ENV MINECRAFT_VERSION 1.9.2

RUN mkdir /minecraft
WORKDIR /minecraft

RUN curl https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar -o minecraft_server.jar

ONBUILD ADD server.properties /minecraft/server.properties

EXPOSE 25565

RUN echo "eula=true" > /minecraft/eula.txt

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar"]
