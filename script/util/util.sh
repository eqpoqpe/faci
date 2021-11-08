#!/bin/bash

#!util

declare readonly ret=echo

#$count
function util::count()
{
	return $#
}

#$check()
function util::check_main_word()
{
	$ret $(grep -r "int main(*.*.*)" | awk -F: '{print $1}')
}

#$args_check()
function util::args()
{
	$ret 0
}

if [ -n "$1" ]; then
	case "${1##*:}" in
	# util::check
	"check")
	$ret $(util::check $@)
	;;
	# util::count
	"count")
	$ret $(util::check $@)
	;;
	"info")
	echo "blcc::util"
	;;
	esac
fi
