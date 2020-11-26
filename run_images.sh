#! /bin/sh
docker run -d --name teamcity-server-instance \
           -v /opt/docker/teamCity/teamcity_server/datadir:/data/teamcity_server/datadir \
           -v /opt/docker/teamCity/teamcity_server/logs:/opt/teamcity/logs \
           -p 9111:8111 jetbrains/teamcity-server

docker run -d --name teamcity-agent-instance -e SERVER_URL="http://teamcity-server-instance:8111" -e DOCKER_IN_DOCKER=start --privileged -e AGENT_NAME=docker_test --link teamcity-server-instance jetbrains/teamcity-agent:2020.1.5-linux-sudo

echo "check running containers"
