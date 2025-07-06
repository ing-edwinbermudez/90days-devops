#!/bin/bash

whoami
if [ "$(whoami)" != "root" ]; then
    echo "Error, Necesitas ser root"
    exit 1
fi