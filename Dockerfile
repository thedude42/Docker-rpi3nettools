FROM resin/rpi-raspbian:jessie

ENV TINI_VERSION v0.13.2
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static-armhf /tini
RUN chmod +x /tini && apt-key adv --recv-keys --keyserver keys.gnupg.net 92BF1079

RUN apt-get update && apt-get install less net-tools dnsutils nmap iputils-ping \
    iproute2 git curl openssh-client socat netcat-openbsd openssl exabgp hping3 iperf3 \
    ike-scan mtr snmp python python-scapy tcpstat tcptrace traceroute tcptraceroute \
    whois bind9-host tcpflow-nox tcpslice ngrep tshark tcpdump tcpreplay netexpect

ENTRYPOINT ["/tini", "--"]

CMD ["/bin/bash"]
