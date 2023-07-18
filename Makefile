SERVICE = glowing-lampsvc.service
NAME = glowing-lamp

default:

install:
	install -D -p -m 755 $(NAME) /usr/local/bin/$(NAME)
	install -D -p -m 544 $(SERVICE) /etc/systemd/system/$(SERVICE)
	systemctl daemon-reload
	systemctl enable $(NAME)
	systemctl start $(NAME)
uninstall:
	rm /usr/local/bin/$(NAME)
	rm /etc/systemd/system/$(SERVICE)
