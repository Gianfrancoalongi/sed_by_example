#!/bin/bash

sed 's/.*/->&<-/' <<EOF
line 1
line 2
line 3
EOF