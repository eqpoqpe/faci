# echo "$(pwd)/spiral/src/gtanm/*.c"

# @author: Ryan Martin
# @data: Oct 20 2021
# @email: l_.ll@hotmail.com
# @source0: github.com/eqpoqpe/blcc
# @source1: github.com/betm/opentool/blcc

declare readonly WORKING_DIR=$(pwd)
#declare readonly BLCC_UTIL=`[ -e "/usr/local/bin/blcc_util" ] && \
#	echo "/usr/local/bin/blcc_util" || \
#	[ -e "$HOME/.local/bin/blcc_util" ] && \
#	echo "$HOME/.local/bin/blcc_util" || echo "./util.sh"`
declare readonly BLCC_UTIL="../util/util.sh"
declare readonly IB_BLIT="interface.blit"
declare readonly CC="gcc"

#!tip
function tip()
{
if [ -n "$1" ]; then
case "$1" in
"make") cat <<EOF

Usage:  blcc make [OPTIONS=[NAME]]

      --bin, -b  binary exec file directory, if not exists bin,
                 when @mkdir '\$WORKING_DIR/bin'
      --lib, -l  directory of library in working
      --clean    clean useless files
EOF
;;
"library") cat <<EOF

Usage:  blcc library [OPTIONS=[NAME]]

      --name     the library name or defined name in Makefile
      --lib, -l  [same as make]
      --clean    clean useless files
EOF
;;
"new") cat <<EOF

Usage:  blcc new [NAME] [OPTIONS]

Create a project directory or library directory,
default will create a project directory,
if needs create a library directory,

please with '--library'.

No options or defaults is create a project
with:

      -l, --library  create a project directory for library

EOF
;;
"init") cat <<EOF

Usage: blcc init [NAME] [OPTIONS]

Init a normal directory be a project directory, if needs init
a library directory, please with '--library'.

No options and default will create a project

      -l, --library  init be library

By the first, you need create a new directory for the
project or library and 'blcc init [OPTIONS]'

EOF
;;
"help")
cat <<EOF

Usage:  blcc [OPTIONS] COMMAND

EOF
esac
fi
}

#!__init
# init and new
function __init()
{
	echo
}

# init a directory
function init()
{
	echo
}

#!new
# $1 -> name $2 -? option
function new()
{
	declare readonly HELP="new"
	
	# WAHT THE FUCK
	#if [ "$#" -eq 1 ]; then
	#	if [ "$1" != "--lib" ] && [ "$1" != "-b" ]; then
	#		declare readonly _IB_PROJ_DIR=("$1" \
	#			"$1/interface.blit" \
	#			"$1/src"\
	#		)
	#		declare readonly _IB_PROJ_INIT=("$1/file.lock" \
	#			"${_IB_PROJ_INIT[1]}/main.c"
	#		)
	#		echo "project"
	#		for gs in ${_IB_PROJ_DIR[@]}; do
	#			if [ $gs = $1/$IB_BLIT ]; then
	#				touch $gs && echo "[$1]" > $gs
	#			else
	#				mkdir $gs && echo $gs >> $_IB_BLIT
	#			fi
	#		done
	#		for gs in ${_IB_PROJ_DIR[@]}; do
	#			        for gs in ${_IB_LIB_INIT[@]}; do
	#					touch $gs
	#				done

	#		done
	#		if [ -e "${_IB_LIB_INIT[2]}" ]; then
	#			echo -e "int main()\n{\n\treturn 0;\n}" \
	#				> ${_IB_LIB_INIT[2]}
	#		fi
	#	fi
	#elif [ "$#" -eq 2 ]; then
	#case "$2" in
	#"-l"|"--library")
	#declare readonly _IB_LIB_DIR=(\
	#	"$1" \
	#	"$1/interface.blit" #!init file
	#	"$1/src" \
	#)

	#declare readonly _IB_LIB_INIT=(\
	#	"$1/file.lock" \
	#	"$1/Makefile" \
	#	"${_IB_LIB_DIR[2]}/main.c" \
	#)

	#for gs in ${_IB_LIB_DIR[@]}; do
	#	if [ $gs = $1/$IB_BLIT ]; then
	#		touch $gs && echo "[$1]" > $gs
	#	else
	#		mkdir $gs && echo "$gs" >> \
	#			$1/$IB_BLIT
	#	fi
	#done
	#for gs in ${_IB_LIB_INIT[@]}; do
	#	touch $gs
	#done
	#if [ -e "${_IB_LIB_INIT[2]}" ]; then
	#	echo -e "int main()\n{\n\treturn 0;\n}" > \
	#		${_IB_LIB_INIT[2]}
	#fi
	#;;
	#$*)
	#tip $HELP
	#;;
	#esac
	#else
	#	tip $HELP
	#fi

	# [NAME] [OPTION]
	declare readonly OPTIONS_OF_NEW=("--library" "-b")

	# NAME
	if [ "$#" -eq 1 ]; then
	if [ "$1" != "-b" ] && [ "$1" != "--library" ]; then
		echo "$1"
	else
		tip $HELP
	fi
	fi
}

# TODO unit test

#!add
function add()
{
	echo
}

#!make
function make()
{
	echo "DONE"
}

#!main
if [ $# -eq 1 ] || [ $# -gt 1 ]; then
	case "$1" in
	"make")
	make $@
	;;
	"library")
	#tip "library"
	;;
	"new")
	#tip "new"
	;;
	"util")
	bash $BLCC_UTIL "info"
	;;
	$*)
	tip "help"
	;;
	esac
fi
