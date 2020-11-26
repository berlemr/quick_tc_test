#! /bin/sh
docker run -d --name teamcity-server-instance \
           -v /opt/docker/teamCity/teamcity_server/datadir:/data/teamcity_server/datadir \
           -v /opt/docker/teamCity/teamcity_server/logs:/opt/teamcity/logs \
           -p 9111:8111 jetbrains/teamcity-server
#need to run agent container with -u root as it has to write some stuff to the volume
docker run -d --name teamcity-agent-instance -e SERVER_URL="http://teamcity-server-instance:8111" --link teamcity-server-instance -v /opt/docker/teamCity/teamcity_agent/conf:/data/teamcity_agent/conf -u root jetbrains/teamcity-agent

echo "check running containers"
