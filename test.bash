#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Hikaru Nemoto
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

#Test of plus command
#CORRECT INPUT
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### STRANGE INPUT###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

#Test of binary command
#CORRECT INPUT
out=$(seq 3 | ./binary.py)
[ "${out}" = 11 ] || ng "$LINENO"

out=$(seq 100 | ./binary.py)
[ "${out}" = 1100100 ] || ng "$LINENO"

out=$(seq 51 | ./binary.py)
[ "${out}" = 110011 ] || ng "$LINENO"

#STRANGE INPUT
out=$(echo あ | ./binary.py)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./binary.py)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 0.5 | ./binary.py)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
