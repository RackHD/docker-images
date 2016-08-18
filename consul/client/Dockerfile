FROM rackhd/consul

ADD ./config/client.json /etc/consul.d/client.json
ADD ./consulinit.sh /usr/bin/consulinit.sh

ENTRYPOINT ["/usr/bin/consulinit.sh"]
