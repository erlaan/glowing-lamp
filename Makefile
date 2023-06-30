SERVICE = glowing-lampsvc.service
NAME = glowing-lamp

default:

install:
	install -D -p -m 755 $(NAME) $(DESTDIR)$(PREFIX)/usr/bin/$(NAME)
	install -D -p -m 544 $(SERVICE) $(DESTDIR)$(PREFIX)/etc/systemd/system/$(SERVICE)

uninstall:
	rm /usr/bin/$(NAME)
	rm /etc/systemd/system/$(SERVICE)
