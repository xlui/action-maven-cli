FROM maven:3.6-jdk-13

LABEL "name"="Maven CLI Action with JDK 13"
LABEL "maintainer"="xlui <i@xlui.me>"
LABEL "version"="1.1.0"

LABEL "com.github.actions.name"="GitHub Action for Maven & JDK 13"
LABEL "com.github.actions.description"="Provide maven cli for JDK 13 projects."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
