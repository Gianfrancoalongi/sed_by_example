#!/bin/bash
sed 's/anything/(\/) slashes/' <<EOF
the separator can be anything
EOF

sed 's:anything:(\:) colon:' <<EOF
the separator can be anything
EOF

sed 's!anything!(\!) exclamation mark!' <<EOF
the separator can be anything
EOF

sed 's|anything|(\|) bar|' <<EOF
the separator can be anything
EOF

sed 's\anything\backslash\' <<EOF
the separator can be anything
EOF

sed 'sSanythingS(\S) capital sS' <<EOF
the separator can be anything
EOF

sed 's1anything1(\1) the integer one1' <<EOF
the separator can be anything
EOF

sed 's anything (\ )\ space ' <<EOF
the separator can be anything
EOF


