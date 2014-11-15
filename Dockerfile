FROM progrium/busybox

ENV CURL_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt

RUN mkdir -p /opt/sbin && \
    opkg-install curl bash ca-certificates && \
    echo "--capath /etc/ssl/certs" > /root/.curlrc && \
    curl https://godist.herokuapp.com/projects/ddollar/forego/releases/current/linux-amd64/forego -o /opt/sbin/forego && \
    chmod a+x /opt/sbin/forego

COPY root/ /

CMD ["/opt/bin/run"]
