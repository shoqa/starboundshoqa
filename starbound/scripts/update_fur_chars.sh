#!/bin/bash
/opt/steamcmd/steamcmd.sh \
    +@NoPromptForPassword 1 \
    +login $STEAM_USERNAME $STEAM_PASSWORD \
    +force_install_dir $STARBOUND_DATAFOLDER \
    +workshop_download_item 211820 740694177 \
    +workshop_download_item 211820 729558042 \
    +workshop_download_item 211820 732452461 \
    +workshop_download_item 211820 774083065 \
    +workshop_download_item 211820 850109963 \
    +workshop_download_item 211820 729597107 \
    +workshop_download_item 211820 729429063 \
    +workshop_download_item 211820 779096734 \
    +workshop_download_item 211820 730529826 \
    +workshop_download_item 211820 739436205 \
    +workshop_download_item 211820 729622432 \
    +workshop_download_item 211820 739676461 \
    +workshop_download_item 211820 741550312 \
    +workshop_download_item 211820 729432341 \
    +workshop_download_item 211820 732276079 \
    +workshop_download_item 211820 731106237 \
    +quit
