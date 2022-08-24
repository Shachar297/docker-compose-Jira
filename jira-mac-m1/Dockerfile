FROM httpd

RUN apt update -y && \
    apt install zip unzip curl default-jdk default-jre -y && \
    alias ll="ls -la" && \
    alias c="clear"
    
WORKDIR /var/jira-home

ENV JIRA_HOME=/var/jira-home


WORKDIR /var

COPY . /var

RUN export JIRA_HOME=/var/jira-home && \
    unzip atlassian-jira-software-8.22.6.zip -d . 

# CMD ["/bin/bash", "./atlassian-jira-software-8.22.6-standalone/bin/start-jira.sh"]

EXPOSE 8080