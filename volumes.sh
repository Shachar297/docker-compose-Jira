VOLUME_NAME=jira
docker volume create ${VOLUME_NAME}

docker network create ${VOLUME_NAME}