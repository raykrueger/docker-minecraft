FROM amazoncorretto:11

LABEL maintainer="raykrueger@gmail.com"

ENV MINECRAFT_SHA "c5f6fb23c3876461d46ec380421e42b289789530"

RUN mkdir /minecraft
WORKDIR /minecraft

RUN echo "${MINECRAFT_SHA}  minecraft_server.jar" > minecraft_server.sha
RUN cat minecraft_server.sha

RUN curl -fsSL https://launcher.mojang.com/v1/objects/${MINECRAFT_SHA}/server.jar -o minecraft_server.jar \
		&& sha1sum -c minecraft_server.sha

VOLUME /minecraft/world
COPY /minecraft/ /minecraft/

ONBUILD ADD server.properties /minecraft/server.properties

EXPOSE 25565

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar", "--nogui"]
