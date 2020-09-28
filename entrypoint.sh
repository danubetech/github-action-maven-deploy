#!/usr/bin/env sh

if [ -f "/multi-server-template.xml" ]; then
    echo "Substitute multi server file."
    envsubst < /multi-server-template.xml > /settings.xml
else
    echo "Substitute single server file."
    envsubst < /maven-settings.template.xml > /settings.xml
fi

cd "$INPUT_PATH_TO_POM" || exit
mvn deploy --settings /settings.xml