#!/usr/bin/env bash

grep -Fl enabled /sys/bus/*/devices/*/power/wakeup |
	grep -vF '/INTC1070:00/' |
	grep -vF '/thunderbolt/' |
	xargs -I% bash -c 'echo 'disabled' > %'
