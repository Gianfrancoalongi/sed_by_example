#!/bin/bash

cat > tmp_script.sed <<EOF
s/product/script/ 
s/production/in the file/
EOF

sed -f tmp_script.sed <<EOF
the product is in production at the moment
EOF

rm tmp_script.sed
