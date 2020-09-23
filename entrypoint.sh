#!/usr/bin/env sh

envsubst < /maven-settings.template.xml > /maven-settings.xml
cd "$INPUT_PATH_TO_POM" || exit
mvn deploy --settings /maven-settings.xml