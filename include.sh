#!/usr/bin/env bash

CPP_PRMS="-Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic"

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

# tar an entired directory
tardir() {
     local dir=$1
     tar -zcvf "${dir}.tar.gz" "${dir}"
}

# resolve ip for address
resolve_ip() {
     local address=$1
     getent hosts ${address} | awk '{ print $1 }'
}

#function run
run_times() {
    local number=$1
    shift
    for i in `seq $number`; do
        $@
    done
}

# cd in directories by typing only the directory
shopt -s autocd
