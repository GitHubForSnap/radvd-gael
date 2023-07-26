# [radvd-gael](https://snapcraft.io/radvd-gael)

_This is NOT an original piece of work, just a snap of radvd_

The Router Advertisement Daemon (radvd) is an open-source software product that implements link-local advertisements of IPv6 router addresses and IPv6 routing prefixes using the Neighbor Discovery Protocol (NDP) as specified in RFC 2461.

This product includes software developed by the authors which are mentioned at the start of the source files and other contributors.

**Authors of radvd**
* Lars Fenneberg    <lf@elemental.net>

**First use**

* Grant firewall-control that may not be automatically granted
`sudo snap connect radvd-gael:firewall-control`

* Configure radvd
`sudo vi /var/snap/radvd-gael/current/radvd.conf`

* Restart the service
`sudo systemctl restart snap.radvd-gael.radvd.service`

* Check the logs
`sudo snap logs radvd-gael.radvd`

* Dump ICMPv6 packets
`sudo tcpdump -n -i <<YOUR_INTERFACE>> icmp6`

**2023-07-26**
* radvd-gael will now use core22 as most of the users are on Ubuntu 22.04

**2022-10-03**
* Improvements, up to git commit c8a11fd (2022-09-08)
* Fix case of AdvValidLifetime option

**2022-07-10**
* Improvements, up to git commit a646066 (2022-07-08)
* Add pref64 support (RFC8781)

**2022-06-30**
* Improvements, up to git commit b0cb5a2 (2022-06-30)
* Change RDNSS and DNSSL lifetime default values

**2022-06-11**
* Improvements, up to git commit e1f9dbc (2022-06-11)
* Add IPV6_DROP_MEMBERSHIP to clean up resources when reload or restart 

**2022-05-31**
* Improvements, up to git commit 16e1139 (2022-03-20)

**2021-03-22**
* First release of radvd-gael v2.19 on amd64, armhf & arm64

