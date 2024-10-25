#!/bin/sh

touch empty

hyperfine -N --warmup 5 --export-csv 1.csv --export-json 1.json \
	"true" \
	"lua -e ''" \
	"luajit -e ''" \
	"dash -c ''" \
	"sh -c ''" \
	"bash -c ''" \
	"zsh -c ''" \
	"fish -c ''" \
	"tclsh empty" \
	"jq . empty" \
	"awk 'BEGIN{}'" \
	"perl -e ''" \
	"ruby -e ''" \
	"python -c ''" \
	"php -r ''" \
	"node -e ''" \
	"deno eval ''" \
	"bun exec ''" \
	"js60 -e ''" \
	"js78 -e ''" \
	"guile -c ''" \
	"chicken-csi -p ''" \
	"erl -eval 'halt()'" \
	"julia -e ''" \
	"ocaml empty" \
	"swipl -q -c empty" \
	"gprolog --init-goal halt" \
	"scryer-prolog -g halt." \
	"poly --script empty" \
	"ghc -c empty" \
	"R -q -e '0'" \
	"bqn -e '0'" \
	"ngnk empty" \
	"bb -e ''" \
	"clj -e ''" \
	"amm -c ''" \

