# Jira Using docker-compose up -d


[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/nirgeier/KubernetesLabs)
### **<kbd>CTRL</kbd> + click to open in new window**  


* git clone 

* see [.env](.https://github.com/Shachar297/docker-compose-Jira/blob/master/.env.example)

* Cusomize your environment variables.

* Delete the .example from the [.env file](https://github.com/Shachar297/docker-compose-Jira/blob/master/.env.example)

* Use ```docker-compose up -d```

* In Addition - you will may need to run [volumes.sh](https://github.com/Shachar297/docker-compose-Jira/blob/master/volumes.sh)

## If You Wish you set up your jira in another way, please look at [dockerJira.sh](https://github.com/Shachar297/docker-compose-Jira/blob/master/dockerJira.sh)


#### This Repository Will show you hot to set up your jira so easy !

* Git clone this repository

```sh
    sudo chmod +x ./dockerJira.sh
    ./dockerJira.sh/
```

* Wait until docker pulls and run the image.

* Go to your browser and go to localhost:8080

[Atlassian Jira Image](https://hub.docker.com/r/atlassian/jira-software)
