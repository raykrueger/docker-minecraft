FROM java
MAINTAINER Ray Krueger <raykrueger@gmail.com>

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar /minecraft/minecraft_server.jar

RUN echo "eula=true" > /minecraft/eula.txt

ONBUILD ADD server.properties /minecraft/server.properties

WORKDIR /minecraft

EXPOSE 25565

ENTRYPOINT java -Xmx1024M -Xms1024M -jar minecraft_server.jar
