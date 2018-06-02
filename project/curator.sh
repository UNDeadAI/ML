#!/usr/bin/env bash

sed -r 's/[^[:print:]]//g' $1 | perl -pe 's/[^[:ascii:]]//g' | sed -r 's/<\/?doc.*>//g' | sed -r 's/[0-9]+/<num>/g'| sed '/^$/d' | sed -r 's/^/ /' > $2
