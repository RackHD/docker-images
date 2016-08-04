#!/bin/sh

client_addr="$(ifconfig eth0 | grep 'inet addr' | awk '{split($2, a, ":"); print a[2]}')"
#client_addr=$("ifconfig | grep 'inet addr'| awk '{split($2, a, ":"); print a[2]}'")

consul agent -client ${client_addr} -config-dir /etc/consul.d -retry-interval 10s -retry-join consul_server
