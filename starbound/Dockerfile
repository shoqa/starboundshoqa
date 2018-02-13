FROM debian:buster

LABEL Maintainer="Falco Prescher"
LABEL Github="https://github.com/falcoprescher/Starbound-Docker"
LABEL Version="v1.1"

ENV DEBIAN_FRONTEND noninteractive

ENV STEAM_USERNAME "anonymous"
ENV STEAM_PASSWORD ""
ENV STARBOUND_FOLDER "/starbound"
ENV STARBOUND_DATAFOLDER "${STARBOUND_FOLDER}/data"
ENV SCRIPTSFOLDER "scripts"
ENV STARBOUND_SCRIPTSFOLDER "${STARBOUND_FOLDER}/${SCRIPTSFOLDER}"
ENV CONFIGFOLDER "config"
ENV STARBOUND_CONFIGFOLDER "${STARBOUND_FOLDER}/${CONFIGFOLDER}"
ENV TERM xterm

# Package cleanup and language setup
RUN apt-get clean && \
    apt-get update

# Libraries and programs
RUN apt-get install curl tar zip lib32stdc++6 git nano -y && \
    dpkg --add-architecture i386 && \
    apt-get install lib32gcc1 libvorbisfile3 -y

RUN mkdir -p $STARBOUND_DATAFOLDER
RUN mkdir -p $STARBOUND_SCRIPTSFOLDER
RUN mkdir -p $STARBOUND_CONFIGFOLDER
RUN mkdir -p /opt/steamcmd

# Steam CMD download and setup Starbound server
WORKDIR /opt/steamcmd
RUN curl -s http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar xzvf -

RUN chmod +x ./steamcmd.sh

# User Management
RUN adduser --disabled-password --gecos '' starbound
RUN chown -R starbound:starbound $STARBOUND_FOLDER
RUN chown -R starbound:starbound /opt/steamcmd

# Grant execution rights for script
COPY ./${SCRIPTSFOLDER} ${STARBOUND_SCRIPTSFOLDER}/
RUN chmod +x ${STARBOUND_SCRIPTSFOLDER}/*.sh

# Starbound server configuration
COPY ./${CONFIGFOLDER}/starbound_server.config ${STARBOUND_CONFIGFOLDER}/starbound_server.config

# Change to starbound user
USER starbound
WORKDIR $STARBOUND_FOLDER

# Ports
EXPOSE 21025
EXPOSE 21026

# Volume
VOLUME $STARBOUND_DATAFOLDER

# Start scripts
ENTRYPOINT ["./scripts/start.sh"]
CMD ["-i -s"]
