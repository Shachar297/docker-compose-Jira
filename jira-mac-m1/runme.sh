DOCKER_VOLUME=jira-new-vol

docker volume create $DOCKER_VOLUME

docker build -t new-jira-app .

docker run -v \
    $DOCKER_VOLUME:/var/atlassian/application-data/jira \
    --name="new-jira-app" -d \
    -p 8080:8080 \
    new-jira-app

docker ps | grep new-jira-app


# docker exec -it $(docker ps -aqf "name=new-jira-app") sh /var/atlassian-jira-software-8.22.6-standalone/bin/start-jira.sh