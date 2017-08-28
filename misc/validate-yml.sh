#!/bin/bash

set -e
set -u

for f in `find ./.ebextensions -name "*.config"`; do

    echo -n "Parsing ${f} ... "
    if ruby -e "require 'yaml';puts YAML.load_file('${f}')" >/dev/null; then
        echo "OK"
    else
        echo "FAILED"
        exit 1
    fi

done
