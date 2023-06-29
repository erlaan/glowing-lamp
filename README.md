# glowing-lamp
This is a service i use to make sure a computer that is used for it-security is logging network-trafik from start.


Installation

Put tcpdumpscript.sh in /usr/bin/

and tcpdumpsvc.service in /etc/systemd/system/

chmod 700 /usr/bin/tcpdumpscript.sh

systemctl daemon-reload

systemctl enable tcpdumpsvc
systemctl start tcpdumpsvc