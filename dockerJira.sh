VOLUME_NAME=jiraVolume

docker volume create ${VOLUME_NAME}

docker run -v ${VOLUME_NAME}:/var/atlassian/application-data/jira --name="jira" -d -p 8080:8080 atlassian/jira-software