docker rm starbound

docker run -it --name starbound `
    --mount "source=starbound,target=/starbound/data" `
    -p 21025:21025 -p 21025:21025/udp -p 21026:21026 -p 21026:21026/udp `
    -e "STEAM_USERNAME=anonymous" -e "STEAM_PASSWORD=" `
    falcoprescher/starbound:1.1 `
    -s
