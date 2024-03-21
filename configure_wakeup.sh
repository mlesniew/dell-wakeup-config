#!/usr/bin/env bash

grep -Fl enabled /sys/bus/*/devices/*/power/wakeup |
	grep -vE '/INTC[0-9]+:[0-9]+/' |
	grep -vF '/thunderbolt/' |
	xargs -I% bash -c 'echo 'disabled' > %'
