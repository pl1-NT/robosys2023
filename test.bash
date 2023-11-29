#!/bin/bash 
# SPDX-FileCopyrightText: 2023 Touki Nishi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
	echo error at Line $1
	res=1
}
res=0
### I/O TEST ###
out=$(seq 5 | ./plus)

[ "$out" = 15 ] || ng $LINENO
[ "$res" = 0 ] && echo OK
exit $res
