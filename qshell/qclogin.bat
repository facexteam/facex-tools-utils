#!/bin/bash

account=pulp
QC='qrsctl' # set the full path to qrsctl

if [ $# -gt 0 ]; then
	if [ "$1" == "aitest" ]; then
		account=aitest
	fi

	if [ "$1" == "ai" ]; then
		account=ai
	fi

	if [ "$1" == "health" ]; then
		account=athealth
	fi
fi

if [ "$account" == "pulp" ]; then
	$QC -v login XBhrm_cIe71aI4HZPj7oBZm-uYPa4D3pzVfNw5LB -2uQxaJFqFcCKUjyCvEkvphzK5JOxakj5aWXyi6u
elif [ "$account" == "aitest" ]; then
	$QC -v login j5QfD6c04xvC5D-pu_Y1Jk114Az-Xh4pIRyFXoVP gCzAy_ikzXjBzl7Rh4camAHqerfbs-2EI0rVoTwc
elif [ "$account" == "ai" ]; then
	$QC -v login 8MbTywnGQZ75BnWL9S1P8PZn-9wCqy6fIs4MyllI yyK5vgoqogbCajpdhKd1gB9B317CB9nVePwySIQk
elif [ "$account" == "atlab" ]; then
	$QC -v login YhkvmBOEH8fO9V0dciL45N01o50rzg2pPayrlNc7 z1_LLjdgzZtSr3QQ3OR24IQeutX20Ler0EwBj479
elif [ "$account" == "ava" ]; then
	$QC -v login _Ov2Z2xPWZluJxBHbtXhd8l9X_sf0A8h1BBFU7g3 X7RfcqcTU5ec1OjuOO1A2d-sS_KazbGtRctoNqqi
elif [ "$account" == "avatest" ]; then
	$QC -v login CP1wPpP9TDtBrRYgeOoONlDm7iF8fjOKKr5RsOsA apc7jIWXgk3yiqSAcCg_93XUNK0BjVrviVEqZLNA
else
	echo 'Invalid account'
fi