#!/bin/bash
# SPDX-FileCopyrightText: 2026 Yohei Sato
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo "${1}行目のテスト失敗"
        res=1
}

res=0

### NORMAL INPUT ###
out=$(printf "1 2 3\n4 5\n" | ./robosys)
expected=$'1 2 3\n4 5'
[ "$?" = 0 ]               || ng "$LINENO"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(printf "温度: 23.5度, 補正: -1.5\n" | ./robosys)
[ "$?" = 0 ]              || ng "$LINENO"
[ "${out}" = "23.5 -1.5" ] || ng "$LINENO"

### NO NUMBER / EMPTY INPUT ###
out=$(printf "数値なし\n" | ./robosys)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(printf "" | ./robosys)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit "$res"
