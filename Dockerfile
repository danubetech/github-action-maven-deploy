FROM maven:3.6.3-adoptopenjdk-8

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y gettext-base

WORKDIR /app/

COPY maven-settings.template.xml /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]