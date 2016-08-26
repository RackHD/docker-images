FROM debian:wheezy

ENV SNAP_V v0.15.0
ENV SNAP_PLUGIN_V v0.15.0

RUN mkdir /snap \

  && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl && rm -rf /var/lib/apt/lists/* \

  && cd /snap \
  && curl -OLs https://github.com/intelsdi-x/snap/releases/download/$SNAP_V-beta/snap-$SNAP_V-beta-linux-amd64.tar.gz \
  && curl -OLs https://github.com/intelsdi-x/snap/releases/download/$SNAP_PLUGIN_V-beta/snap-plugins-$SNAP_PLUGIN_V-beta-linux-amd64.tar.gz \

  && tar -xvf snap-$SNAP_V-beta-linux-amd64.tar.gz \
  && mv snap-$SNAP_V-beta/bin/* /usr/local/bin/ \
  && rm -rf snap-$SNAP_V-beta \


  && tar -xvf snap-plugins-$SNAP_PLUGIN_V-beta-linux-amd64.tar.gz \
  && mkdir /snap/auto \
  && mv snap-$SNAP_PLUGIN_V-beta/plugin/snap-plugin-collector-mock1 /snap/auto/ \
  && mv snap-$SNAP_PLUGIN_V-beta/plugin/snap-plugin-processor-passthru /snap/auto/ \
  && rm -rf snap-$SNAP_PLUGIN_V-beta \

  && rm -rf ./*.tar.gz

