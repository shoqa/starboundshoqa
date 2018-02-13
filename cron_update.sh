cd "${0%/*}"
docker stop starbound
screen -X -S starbound quit
./backup.sh
docker run --rm -v starbound:/starbound/data --entrypoint ./scripts/update_fur.sh falcoprescher/starbound:1.1
./start.screen.sh
