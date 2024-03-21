install:
	install configure_wakeup.sh /usr/local/bin
	install -m 644 configure-wakeup.service /etc/systemd/system/
	systemctl enable configure-wakeup
	systemctl start configure-wakeup
