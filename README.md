# minecraft-modpack-almond

```diff
- WORK IN PROGRESS
- This project has yet to have its first release, and is in active development
```

[![Build Status](https://img.shields.io/travis/rremer/minecraft-modpack-almond)](https://travis-ci.org/rremer/minecraft-modpack-almond)
[![Maven Central](https://img.shields.io/nexus/r/com.github.rremer/minecraft-modpack-almond?server=https%3A%2F%2Foss.sonatype.org)](https://search.maven.org/artifact/com.github.rremer/minecraft-modpack-almond/20w06a-1/jar)
![Docker Tag](https://img.shields.io/docker/v/rremer/minecraft-modpack-almond/20w06a-1?label=docker.io)
[![License](https://img.shields.io/github/license/rremer/minecraft-modpack-almond)](https://opensource.org/licenses/MIT)
[![Keybase PGP](https://img.shields.io/keybase/pgp/rremer)](https://keybase.io/rremer/pgp_keys.asc)

A Fabric/datapack vanilla-substitute for Minecraft.

## Usage

Currently, this modpack is distributed as a [MultiMC] zip.

1. [Download MultiMC] and install.
2. Open MultiMC and and add login credentials
3. Click "Add Instance" and select "Import from zip" on the left-hand side.
4. Paste in this URL: [MMC client release 20w06a-1] and hit <Enter> 
5. When the download finishes, double-click 'Almond-20w06a-1-client-mmc'
6. If you are not signed into a Mojang account, you will be promted for credentials

## Building

```sh
mvn clean install
```

## Server Usage

A container image is shipped to [docker.io/rremer/minecraft-modpack-almond]. You can start it via:
```sh
docker run -itPe EULA_MINECRAFT_BOOL=true rremer/minecraft-modpack-almond
```

```sh
mvn clean install
```

## Releasing

```sh
mvn versions:set -DnewVersion=20w06a-1
mvn clean deploy -Dparameter.gpg.skip=false
mvn site site-deploy
```

### Versioning

A version number of this project's artifacts is built as ```<minecraft.version>-<project.version>```, where:
* ```minecraft.version``` is a version of minecraft (1.13.2, 1.14.4, ...)
* ```project.version``` is an increment for this project to release against a version of minecraft (1,2,3, ...)

[MultiMC]:https://multimc.org/
[Download MultiMC]:https://multimc.org/#Download
[MMC client release 20w06a-1]:https://storage.googleapis.com/minecraft-modpack-almond/1.15.2/Almond-1.15.2-client-mmc.zip
[docker.io/rremer/minecraft-modpack-almond]:https://hub.docker.com/r/rremer/minecraft-modpack-almond/tags
