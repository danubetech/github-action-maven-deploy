#!/usr/bin/env sh

if [ "$SETTINGS_FILE" ]; then
    echo "Substitute multi server file."
    echo "$SETTINGS_FILE" > /multi-server-template.xml
    envsubst < /multi-server-template.xml > /settings.xml
else
    echo "Substitute single server file."
    envsubst < /settings.template.xml > /settings.xml
fi

cd "$INPUT_PATH_TO_POM" || exit
mvn deploy --settings /settings.xml