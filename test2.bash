#!/bin/bash
# SPDX-FileCopyrightText: 2023 Touki Nishi
# SPDX-License-Identifier: BSD-3-Clause

er(){
	echo at LINE $1
	res=1	
}
res=0
out=$(seq 5 | ./plus-times)
onum=$(echo $out | sed -e 's/[^0-9]//g')
### answer confirm ###
[ "$?" = 0 ]             || (echo end status error && er ${LINENO}) 
[ "$onum" = "151203.0" ] || (echo calculate error && er ${LINENO})

### input check ###
out=$(echo http:// | ./plus-times)
[ "$?" = 1 ]       || (echo end status error && er ${LINENO})
[ "${out}" = "" ]  || (echo invalid output  && er ${LINENO})

out=$(echo  | ./plus-times)
[ "$?" = 1 ]       || (echo end status error && er ${LINENO})
[ "${out}" = "" ]  || (echo invalid output  && er ${LINENO})

[ "$res" = 0 ] && echo all correct
exit $res

