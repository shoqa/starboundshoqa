#!/bin/bash
screen -S starbound -dm bash -c './start.sh; echo $?; exec bash -i'
