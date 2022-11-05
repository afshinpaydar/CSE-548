#!/bin/bash

alias pox=/home/ubuntu/pox/pox.py

nohup pox openflow.of_01 \
	--port=6655 pox.forwarding.l2_learning \
	pox.forwarding.L3Firewall --l2config="l2firewall.config" \
	--l3config="l3firewall.config" &

nohup pox openflow.of_01 \
	--port=6633 pox.forwarding.l2_learning \
	pox.forwarding.L3Firewall --l2config="l2firewall.config" \
	--l3config="l3firewall.config" &
