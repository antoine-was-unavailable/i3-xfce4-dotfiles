#!/usr/bin/env bash


if ps aux | grep -q "[p]olybar main";then
	killall polybar
else
	polybar main
fi
