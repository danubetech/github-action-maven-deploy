FROM maven:3-eclipse-temurin-21

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gettext-base patch

COPY settings.template.xml /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
