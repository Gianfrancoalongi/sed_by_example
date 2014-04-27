#!/bin/bash

sed -r 's/(\w+) (\w+) (\w+) (\w+)/\2 \4 \3 \1/' <<EOF
order this in is
EOF