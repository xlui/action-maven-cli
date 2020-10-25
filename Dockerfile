FROM maven:3.6-openjdk-14-slim

LABEL "name"="Maven CLI For GitHub Actions"
LABEL "maintainer"="xlui <i@xlui.me>"
LABEL "version"="2.0"
LABEL "openjdk"="14"

LABEL "com.github.actions.name"="Maven CLI For GitHub Actions"
LABEL "com.github.actions.description"="Provide maven cli for GitHub Actions"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
