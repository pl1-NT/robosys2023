#!/bin/bash
res=0
out=$(seq 5 | ./plus)
onum=$(echo $out | sed -e 's/[^0-9]//g')

[ "$onum" = "15120" ] || echo 不一致 
[ "$res" = 0 ] && echo OK
exit $res

