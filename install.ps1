docker volume create starbound

docker rm starbound_install

docker run -it --name starbound_install `
    --mount "source=starbound,target=/starbound/data" `
    -p 21025:21025 -p 21025:21025/udp -p 21026:21026 -p 21026:21026/udp `
    -e "STEAM_USERNAME=anonymous" -e "STEAM_PASSWORD=" `
    falcoprescher/starbound:1.1 `
    -i


