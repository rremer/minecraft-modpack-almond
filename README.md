# minecraft-modpack-almond

[![Build Status](https://img.shields.io/travis/rremer/minecraft-modpack-almond/master)](https://travis-ci.org/github/rremer/minecraft-modpack-almond)
[![Maven Central](https://img.shields.io/maven-central/v/com.github.rremer/minecraft-modpack-almond-client.svg?label=client)](https://search.maven.org/artifact/com.github.rremer/minecraft-modpack-almond-client/20w10a-1/jar)
[![Docker Tag](https://img.shields.io/docker/v/rremer/minecraft-modpack-almond/20w10a-1?label=docker)](https://hub.docker.com/repository/docker/rremer/minecraft-modpack-almond/general)
[![License](https://img.shields.io/github/license/rremer/minecraft-modpack-almond)](https://opensource.org/licenses/MIT)
[![Keybase PGP](https://img.shields.io/keybase/pgp/rremer)](https://keybase.io/rremer/pgp_keys.asc)

A Fabric/datapack vanilla-substitute for Minecraft.

## Usage

Currently, this modpack is distributed as a [MultiMC] zip.

1. [Download MultiMC] and install.
2. Open MultiMC and and add login credentials
3. Click "Add Instance" and select "Import from zip" on the left-hand side.
4. Paste in this URL: [MMC client release 20w10a-1] and hit <Enter> 
5. When the download finishes, double-click 'minecraft-modpack-almond-client-20w10a-1.zip'
6. If you are not signed into a Mojang account, you will be promted for credentials


## Building

```sh
mvn clean install
```

## Server Usage

A container image is shipped to [docker.io/rremer/minecraft-modpack-almond]. You can start it via:
```sh
docker run -d \
  -p 25565:25565 \
  -e EULA_MINECRAFT_BOOL=true \
  -v /path/to/persistent/world:/minecraft-modpack-almond/.minecraft/world \
  rremer/minecraft-modpack-almond:20w10a-1
```
... where ```/path/to/persistent/world``` is some real local filesystem to persist the world data between container restarts.


## Releasing

```sh
mvn versions:set -DnewVersion=20w10a-1
mvn clean deploy -Dparameter.gpg.skip=false
mvn site site-deploy
```

### Versioning

A version number of this project's artifacts is built as ```<minecraft.version>-<project.version>```, where:
* ```minecraft.version``` is a version of minecraft (1.15.2, 20w10a ...)
* ```project.version``` is an increment for this project to release against a version of minecraft (1,2,3, ...)

[MultiMC]:https://multimc.org/
[Download MultiMC]:https://multimc.org/#Download
[MMC client release 20w10a-1]:https://repo.maven.apache.org/maven2/com/github/rremer/minecraft-modpack-almond-client/20w10a-1/minecraft-modpack-almond-client-20w10a-1.zip
[docker.io/rremer/minecraft-modpack-almond]:https://hub.docker.com/r/rremer/minecraft-modpack-almond/tags
