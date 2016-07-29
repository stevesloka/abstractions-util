#!/bin/sh
set -e

# jenkins swarm slave
JAR=`ls -1 /usr/share/jenkins/swarm-client-*.jar | tail -n 1`

echo Running java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS "$@"
exec java $JAVA_OPTS -jar $JAR -fsroot $HOME $PARAMS "$@"

# As argument is not jenkins, assume user want to run his own process, for sample a `bash` shell to explore this image
exec "$@"
