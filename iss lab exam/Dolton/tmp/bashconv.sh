#!/bin/bash
# chr() - converts decimal value to its ASCII character representation
# ord() - converts ASCII character to its decimal value

chr() {
  printf \\$(printf '%03o' $1)
}

ord() {
  printf '%d' "'$1"
}

ord A
echo
chr 65
echo
