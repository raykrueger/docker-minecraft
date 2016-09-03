docker-minecraft
================

Learning more about Docker via Minecraft.

Summary
------------

A very basic minecraft server built on the openjdk image.

```
docker run -d -p 25565:25565 raykrueger/minecraft
```

Persistence
-----------

The minecraft world files are stored in a /minecraft/world volume inside the
image. To persist that data you need to provide a persistent volume to that
path. To do that locally you could mount a local directory as in...

```
docker run -d -p 25556:25565 -v /some/volume:/minecraft/world raykrueger/minecraft
```

Customizing
------------

If you'd like to use a custom server.properties you can start
a custom image from this one with a server.properties.

Create your own Dockerfile to build from with a server.properties
in place.

```
FROM raykrueger/minecraft
```

Then build your image and run that. If there is a server.properties
next to the Dockerfile, it will be pulled into the image.

EULA
------------

Running this docker image means you agree to the minecraft EULA
https://account.mojang.com/documents/minecraft_eula
