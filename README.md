# Starbound-Docker

## Get started
1. ./build.sh
2. ./install.sh
3. ./run.sh

## Installing FrackingUniverse Mod (Server)
1. docker run -it --rm -v starbound:/starbound/data --entrypoint ./scripts/update_fur.sh falcoprescher/starbound:1.1
2. ./install.sh
3. docker run -it --rm -v starbound:/starbound/data --entrypoint /bin/bash falcoprescher/starbound:1.1
4. rm /starbound/linux/sbinit.config
5. curl https://raw.githubusercontent.com/falcoprescher/Starbound-Docker/master/starbound/config/sbinit.config --output /starbound/linux/sbinit.config
6. exit
7. ./run.sh

## Update FrackingUniverse Mode (Server)
1. docker run -it --rm -v starbound:/starbound/data --entrypoint ./scripts/update_fur.sh falcoprescher/starbound:1.1

## Install Backup and FrackinUniverse Update as Cronjob (Server)
1. crontab -e
2. 0 3 * * * /home/fp0x00/Projekte/Starbound-Docker/cron_update.sh
3. Save and exit

## Installing FrackingUniverse Mod (Client)
1. In-game options check: 'Allow Assets Mismatch'
2. Steam Workshop install 'Xbawks Character Extender', 'Frackin' Universe', 'Frackin' Races', 'Frackin' Music'
3. Steam Workshop install any races 'Frackin' Universe supports
4. Alternatively use this link to install the mods all at once: http://steamcommunity.com/sharedfiles/filedetails/?id=1188014302

## Backup world files
1. ./backup.sh

## Restore world files
1. Change file in restore.sh to the backup you want to restore
2. ./restore.sh
