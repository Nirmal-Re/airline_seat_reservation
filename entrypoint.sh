#!/bin/bash
# Docker entrypoint script.

# Wait until MongoDB is ready
# until nc -z $MONGOHOST $MONGOPORT
# do
#   echo "$(date) - waiting for MongoDB to start"
#   sleep 2
# done

echo "MongoDB is ready"
echo $NODE_NAME
exec elixir --name $NODE_NAME --cookie mycookie -S mix phx.server