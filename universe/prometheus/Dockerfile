FROM fish/prometheus
ADD . /etc
CMD [ "-configFile=/etc/prometheus.conf", \
      "-metricsStoragePath=/prometheus/metrics", "-logtostderr", \
      "-defaultStalenessDelta=7200" ]
