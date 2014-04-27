#!/bin/bash

sed -r 's/_(.)/\l\1/g
        s/-(.)/\u\1/g' <<EOF
_Swap _Upper _For _Lower -and -lower -for -upper 
EOF