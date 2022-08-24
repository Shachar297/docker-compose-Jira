universalJiraRunner() {
    cd jira
    chmod +x dockerJira.sh
    ./dockerJira.sh
    echo "downloading jira for universal docker (amd64)"
}

m1JiraRunner() {
    echo "downloading jira for m1 (silicon) (arm64)"
    cd jira-mac-m1
    chmod +x restart.sh
    ./restart.sh
}


unixInstallations() {
    echo "download required packages using apt"
    apt update -y && \
            apt install docker curl wget -y
    
}

macUniversalInstallations() {
    echo "downloading required packages using brew"
    brew install docker curl wget
}

macM1Installations() {
    echo "downloading atlassian-jira-software-8.22.6"
    wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-8.22.6.zip
    mv atlassian-jira-software-8.22.6.zip jira-mac-1
}


isUniversalRunner=true
 

if [[ $(uname -s) -eq "Darwin" ]]; then

    while true; do
        read -p "Are you using an intel chip ? (y / n)" yn
        case $yn in
            [Yy]* ) macM1Installations; break;;
            [Nn]* ) m1JiraRunner; break;;
            * ) echo "Please provide an anser with yes or no.";;
        esac
    done
    isUniversalRunner=$yn
    macUniversalInstallations

else
    unixInstallations
fi

    while true; do
        case $yn in
            [Yy]* ) universalJiraRunner; break;;
            [Nn]* ) break;;
            * ) echo "Something went wrong.... Please try again.";;
        esac
    done
