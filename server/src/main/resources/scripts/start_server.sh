#!/bin/sh
#
# start a minecraft server
#
# ARG1: path to a properties file
#

set -o allexport
set -o errexit
set -o nounset

PROPERTIES_FILEPATH="${1}"

# source all properties
test -f "${PROPERTIES_FILEPATH}"
source "${PROPERTIES_FILEPATH}"

# answer eula early
echo "eula=${EULA_MINECRAFT_BOOL}" > eula.txt

# run the server
java \
"${JAVA_GARBAGE_COLLECT_OPTIONS}" \
-Xms"${JAVA_MIN_HEAP_GB}g" \
-Xmx"${JAVA_MAX_HEAP_GB}g" \
-jar "${FABRIC_LAUNCHER_FILENAME}"
