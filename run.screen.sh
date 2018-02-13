#!/bin/bash
screen -S starbound -dm bash -c './run.sh; echo $?; exec bash -i'
