mn --topo=single,4 \
	--controller=remote,port=6655 \
	-i 192.168.2.10 \
	--switch=ovsk --mac

mn -c
