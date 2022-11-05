#!/bin/bash

cd /home/ubuntu/CSE-548/Project2-SDN-Based_Stateless_Firewall

nohup /home/ubuntu/pox/pox.py openflow.of_01 \
	--port=6655 pox.forwarding.l2_learning \
	pox.forwarding.L3Firewall --l2config="l2firewall.config" \
	--l3config="l3firewall.config" &

nohup /home/ubuntu/pox/pox.py openflow.of_01 \
	--port=6633 pox.forwarding.l2_learning \
	pox.forwarding.L3Firewall --l2config="l2firewall.config" \
	--l3config="l3firewall.config" &
