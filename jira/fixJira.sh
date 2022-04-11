CONTAINER_ID=$(sudo docker ps -aqf "name=jira")
docker exec -it "$CONTAINER_ID" bash
cd /opt/atlassian/jira/conf