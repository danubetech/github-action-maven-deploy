#!/usr/bin/env sh

envsubst < /maven-settings.template.xml > /maven-settings.xml
mvn deploy --settings /maven-settings.xml