# minecraft-modpack-almond

[![Build Status](https://img.shields.io/travis/rremer/minecraft-modpack-almond/master)](https://travis-ci.org/github/rremer/minecraft-modpack-almond)
[![Maven Central](https://img.shields.io/maven-central/v/com.github.rremer/minecraft-modpack-almond-client.svg?label=client)](https://search.maven.org/artifact/com.github.rremer/minecraft-modpack-almond-client/1.18.1-1/jar)
[![Docker Tag](https://img.shields.io/docker/v/rremer/minecraft-modpack-almond/1.18.1-1?label=docker)](https://hub.docker.com/repository/docker/rremer/minecraft-modpack-almond/general)
[![License](https://img.shields.io/github/license/rremer/minecraft-modpack-almond)](https://opensource.org/licenses/MIT)
[![Keybase PGP](https://img.shields.io/keybase/pgp/rremer)](https://keybase.io/rremer/pgp_keys.asc)

A Fabric/datapack vanilla-substitute for Minecraft.

## Usage

Currently, this modpack is distributed as a [MultiMC] zip.

1. If you don't have Java 17+, install it. Here's a recent build for [Windows](https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jdk17.0.2-win_x64.msi), [MacOs](https://www.azul.com/downloads/?version=java-17-lts&os=macos&architecture=x86-64-bit&package=jdk), [Linux](https://www.azul.com/downloads/?version=java-17-lts&os=linux&architecture=x86-64-bit&package=jdk)
2. [Download MultiMC] and install.
3. Open MultiMC and and add login credentials
4. Click "Add Instance" and select "Import from zip" on the left-hand side.
5. Paste in this URL: [MMC client release 1.18.1-1] and hit <Enter> 
6. When the download finishes, double-click 'minecraft-modpack-almond-client-1.18.1-1.zip'
7. If you are not signed into a Mojang account, you will be promted for credentials

## Features

This modpack aims to be 'Vanilla+', so primarily quality-of-life features have been added, but also some gameplay additions which are in keeping with Minecraft lore.

### Quality of Life

Here' a summary of the quality-of-life features provided by this modpack.

#### Recipe and Loot Table Fixes

Wither skeletons have a much higher chance of dropping a wither skull.

#### Just Enough Items (JEI), Just Enough Resources (JER)

Open your inventory to get a sidebar of searchable items and their recipes. Additionally see natural resources and their spawn distributions.

#### Worldmap

A realtime map to help find your way.

#### Lithium/Iris/Sodium/Shaderpacks

Lithium is included to speed up framerate. Iris is included along with the 'Complementary Shaders' pack, so if you want fancy current-gen graphics and lighting, you can toggle that on.

#### Fast Leaf Decay

Chopping down a tree's logs won't leave leaves in the air forever.

#### Litematica

Save a schematica of something you've built in this world or another, and then 'project' it in your current world to show where to build block-for-block. Schematics include an inventory list of materials, so you can mock up builds in Creative mode and then get to work in Survival Multiplayer.

#### Immersive Portals

See through portals into the next dimension they go to in realtime.

### Gameplay

Here's a summary of the gameplay changes itroduced in this modpack.

#### Spice Of Life: Carrot Edition *

When you eat 10 new unique food items, your max health will permanently increase by 1 heart (max 30, or 3x default healthbar). Explore to find new food sources, and farm them to share the bounty with your friends.

#### Enhanced Celestials

Blood moon event prevents players from sleeping through the night, and increases the mob cap and spawn rate of mabs. Harvest moon event increases plant growth and drop rates.


#### Carpet Autocrafting Table

Crafting tables can be pushed by pistons. Items can be pumped into crafiting tables via hoppers. Recipes are automatically completed in this manner and can be sucked out via hoppers on the bottom of the table. 

#### Carpet Extra

Dispensers can place blocks, feed and milk animals, and till soil. Amethyst nodes cane be pushed with pistons, along with other previously unmovable blocks like chests, dispensers, and crafting tables. Chickens can be sheared to get feathers.


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
  rremer/minecraft-modpack-almond:1.18.1-1
```
... where ```/path/to/persistent/world``` is some real local filesystem to persist the world data between container restarts.


## Releasing

```sh
mvn versions:set -DnewVersion=1.18.1-1
mvn clean deploy -Dparameter.gpg.skip=false
mvn site site-deploy
```

### Versioning

A version number of this project's artifacts is built as ```<minecraft.version>-<project.version>```, where:
* ```minecraft.version``` is a version of minecraft (1.15.2, 20w10a ...)
* ```project.version``` is an increment for this project to release against a version of minecraft (1,2,3, ...)

[MultiMC]:https://multimc.org/
[Download MultiMC]:https://multimc.org/#Download
[MMC client release 1.18.1-1]:https://repo.maven.apache.org/maven2/com/github/rremer/minecraft-modpack-almond-client/1.18.1-1/minecraft-modpack-almond-client-1.18.1-1.zip
[docker.io/rremer/minecraft-modpack-almond]:https://hub.docker.com/r/rremer/minecraft-modpack-almond/tags
