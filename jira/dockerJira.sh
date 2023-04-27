docker volume create jira-vol



docker run -v \
    jira-vol:/var/atlassian/application-data/jira \
    --name="jira" -d \
    -p 8080:8080 \
    atlassian/jira-software:8.5.4

docker ps | grep jira