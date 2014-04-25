#!/bin/bash

sed 's/A B C D/_ _ _ _/' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

sed 's/A B C D/_ _ _ _/g' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

sed 's/A B C D/_ _ _ _/i' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

sed 's/A B C D/_ _ _ _/1' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

sed 's/A B C D/_ _ _ _/2' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

sed 's/A B C D/_ _ _ _/3' <<EOF
a b c d A B C D a b c d A B C D a b c d A B C D
EOF

