docker-minecraft
================

Learning more about Docker via Minecraft.

Summary
------------
A very basic minecraft server built on Ubuntu.
```
docker run -d -p 25565:25565 raykrueger/minecraft
```

DigitalOcean
------------
If you're using the Docker application setup at DigitalOcean,
enable user data and add the following.
```
#!/bin/sh
docker run -d -p 25565:25565 raykrueger/minecraft
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

