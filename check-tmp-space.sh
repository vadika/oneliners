#!/bin/bash
while :; do df -k /tmp; echo -en "\033[2A"; sleep 5; done
