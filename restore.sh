#!/bin/bash
# Please set the appropriate tar archive path and name to restore it to the volume
docker run -it -v starbound:/volume -v "$(pwd)/backup:/backup" debian:buster \
    bash -c "rm -rf /volume/* ; tar -C /volume/ -xzf /backup/starbound-$(date +%Y-%m-%d).tar.gz"

