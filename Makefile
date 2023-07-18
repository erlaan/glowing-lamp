SERVICE = glowing-lampsvc.service
NAME = glowing-lamp

default:

install:
	install -D -p -m 755 $(NAME) /usr/local/bin/$(NAME)
	install -D -p -m 544 $(SERVICE) /etc/systemd/system/$(SERVICE)
	mkdir -p /var/log/tcpdump
	chown tcpdump:tcpdump /var/log/tcpdump
	systemctl daemon-reload
	systemctl enable $(SERVICE)
	systemctl start $(SERVICE)
uninstall:
	rm /usr/local/bin/$(NAME)
	rm /etc/systemd/system/$(SERVICE)
