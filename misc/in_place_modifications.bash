#!/bin/bash

cat > tmp_file.txt <<EOF
this file contains stuff
EOF

sed 's/stuff/text/' tmp_file.txt
echo the file now contains: $(<tmp_file.txt)

sed -i 's/stuff/text/' tmp_file.txt
echo the file now contains: $(<tmp_file.txt)

rm tmp_file.txt