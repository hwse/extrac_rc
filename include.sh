#!/usr/bin/env bash

# Python virtualenv aliases
alias acvenv='. venv/bin/activate'
alias mkvenv='virtualenv -p /usr/bin/python3 venv'

# search for expression in specified files
findgrep() {
	if [[ $1 = "-h" ]]; then
		echo "findgrep [findexprt] [grepexpr]"
	else
		local findexpr=$1
		local grepexpr=$2
		find . -name "$findexpr" -exec grep -H "$grepexpr" {} \;
	fi
}
