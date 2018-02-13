#!/bin/bash

# https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash
START=false
INSTALL=false
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--install)
    INSTALL=true
    shift # past argument
    shift # past value
    ;;
    -s|--start)
    START=true
    shift # past argument
    shift # past value
    ;;
esac
done

if $INSTALL ; then
    /opt/steamcmd/steamcmd.sh \
        +@NoPromptForPassword 1 \
        +login $STEAM_USERNAME $STEAM_PASSWORD \
        +force_install_dir $STARBOUND_DATAFOLDER \
        +app_update 211820 validate \
        +quit

    /bin/cp -rf $STARBOUND_CONFIGFOLDER/starbound_server.config ${STARBOUND_DATAFOLDER}/storage/starbound_server.config
fi

if $START ; then
    cd ${STARBOUND_DATAFOLDER}/linux
    ./starbound_server
fi





