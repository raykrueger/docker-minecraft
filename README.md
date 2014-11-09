docker-minecraft
================

Learning more about Docker via Minecraft.

Summary
----------------
A very basic minecraft server built on Ubuntu and minecraft 1.8.
```
docker run -d -p 25565:25565 raykrueger/minecraft
```

CloudInit
----------------
If you're using CloudInit on ubuntu, just add the shebang.
```
#!/bin/sh
docker run -d -p 25565:25565 raykrueger/minecraft
```
Running this docker image means you agree to the minecraft EULA
https://account.mojang.com/documents/minecraft_eula

