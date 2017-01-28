# Docker-rpi3nettools
Dockerfile for building a networking-focussed interactive docker image to run on raspberry pi 3

Docker file entrypoint uses [Tini](https://github.com/krallin/tini) so there should be no complications with running forking scripts at scale.

Included tools:

* Python 2.7.9 and [scapy](http://www.secdev.org/projects/scapy/)
* [Exabgp](https://github.com/Exa-Networks/exabgp)
* nmap, socat, netcat, hping, tcpdump, tshark, openssl, tcpflow, tcpslie, tcptrace, traceroute, snmp, ike-scan, curl, whois, mtr, netexpect, tcpreplay, ngrep, iperf
* Debian Linux packages net-tools, iputils-ping, iproute2, bind9-host, dnsutils
