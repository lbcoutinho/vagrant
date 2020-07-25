#!/bin/bash

FILE=~/.ssh/id_rsa_vagrant

# Create SSH key pair for Vagrant if not found
if [[ ! -f "$FILE" || ! -f "$FILE.pub" ]] ; then
    ssh-keygen -t rsa -b 2048 -f "$FILE" -q -N ""
    echo "Key pair created: $FILE"
fi