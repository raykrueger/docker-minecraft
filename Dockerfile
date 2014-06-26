FROM ubuntu
MAINTAINER Ray Krueger <raykrueger@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java7-installer

RUN useradd -s /bin/bash -d /minecraft -m minecraft
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.7.9/minecraft_server.1.7.9.jar /minecraft/minecraft_server.jar
RUN chown -R minecraft:minecraft /minecraft

VOLUME /minecraft
WORKDIR /minecraft
USER minecraft
EXPOSE 25565

ENTRYPOINT java -Xmx1024M -Xms1024M -jar minecraft_server.jar
