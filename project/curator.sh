#!/usr/bin/env bash

sed -r 's/[^[:print:]]//g' $1 | sed -r 's/<\/?doc.*>//g' | sed -r 's/[0-9]+[\.,]?[0-9]*%?/num/g' | sed -r 's/([][])/ \1 /g' | sed -r 's/([-/\^.«»"“”?¿!¡,:()#$%&_+*~=|°¬`;<>}{—‘])/ \1 /g' | sed -r "s/(')/ \1 /g" | sed -r 's/num/<num>/g' | sed '/^$/d' | sed -r 's/^/ /' > $2

