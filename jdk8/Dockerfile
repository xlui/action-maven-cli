FROM maven:3.6-jdk-8-alpine

LABEL "name"="Maven CLI Action with JDK 8"
LABEL "maintainer"="xlui <i@xlui.me>"
LABEL "version"="1.1.0"

LABEL "com.github.actions.name"="GitHub Action for Maven & JDK 8"
LABEL "com.github.actions.description"="Provide maven cli for JDK 8 projects."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
