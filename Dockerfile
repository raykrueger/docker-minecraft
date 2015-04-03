FROM phusion/baseimage
MAINTAINER Ray Krueger <raykrueger@gmail.com>

RUN apt-get update && apt-get install -y \
  default-jre

RUN useradd -m -d /minecraft minecraft 

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8.3/minecraft_server.1.8.3.jar /minecraft/minecraft_server.jar

RUN echo "eula=true" > /minecraft/eula.txt

ONBUILD ADD server.properties /minecraft/server.properties

RUN chown minecraft:minecraft /minecraft/*

RUN mkdir /etc/service/minecraft
ADD minecraft.sh /etc/service/minecraft/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 25565
