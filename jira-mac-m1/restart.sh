if [[ $(docker ps -aqf "name=new-jira-app") != "" ]]; then

echo "Removing the current new-jira-app docker container, and initializing a new one..."

docker stop $(docker ps -aqf "name=new-jira-app") && \
     docker rm $(docker ps -aqf "name=new-jira-app") && \
     ./runme.sh
else
    ./runme.sh
fi