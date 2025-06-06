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
	"R -q -e '0'" \
	"julia -e ''" \
	"bqn -e '0'" \
	"ngnk empty" \
	"guile -c ''" \
	"chicken-csi -p ''" \
	"racket -e ''" \
	"sbcl --script empty" \
	"clisp -q -x ''" \
	"ocaml ./empty" \
	"poly --script empty" \
	"ghc -e ':script empty'" \
	"swipl -q -c empty" \
	"gprolog --init-goal halt" \
	"scryer-prolog -g halt." \
	"erl -eval 'halt()'" \
	"clj -e ''" \
	"bb -e ''" \

	# Disabled, because way too slow
	# "amm -c ''" \

