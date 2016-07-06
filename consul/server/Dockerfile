FROM skunkworxs/consul
ADD ./config /consul_config/
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENTRYPOINT ["/bin/consul", "-config-dir=/consul_config"]
