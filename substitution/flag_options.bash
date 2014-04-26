#!/bin/bash

INPUT="a b c d A B C D a b c d A B C D a b c d A B C D"
run_with_pattern() {
    printf "%-28s => " "${1}"
    sed "${1}" <<EOF
${INPUT}
EOF
}

with_file() {
    echo ''
    ${2} "${3}"
    echo ${1} contains $(< ${1})
    rm ${1}
}

printf "%58s\n" "${INPUT}"

run_with_pattern 's/A B C D/_ _ _ _/'

run_with_pattern 's/A B C D/_ _ _ _/g'

run_with_pattern 's/A B C D/_ _ _ _/i'

run_with_pattern 's/A B C D/_ _ _ _/1'

run_with_pattern 's/A B C D/_ _ _ _/2'

run_with_pattern 's/A B C D/_ _ _ _/3'

run_with_pattern 's/A B C D/_ _ _ _/4'

run_with_pattern 's/a/echo /e'

run_with_pattern 's/a/echo /; s/D/|rev/e3'

with_file res.txt run_with_pattern 's/A B C D/_/gw res.txt'

