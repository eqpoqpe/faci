#!/bin/bash

#!util

declare readonly ret=echo

#$count
function util::count()
{
	return $#
}

#$check()
function util::check()
{
	$ret $(grep -r "int main(*.*.*)" | awk -F: '{print $1}')
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
	esac
fi
