name ?= lgq1
vnc_port ?= 8
create_user:
	useradd -m ${name}
	passwd ${name}
	sed -i '$$a\ :${vnc_port}=${name}' /etc/tigervnc/vncserver.users
	# firewall-cmd --permanent --add-port 5901-59${vnc_port}/tcp
	# firewall-cmd --permanent --add-service vnc-server
	# systemctl restart firewalld.service
	systemctl daemon-reload
	runuser -l ${name} -c 'vncpasswd'
	systemctl start  vncserver@:${vnc_port}.service
	systemctl enable vncserver@:${vnc_port}.service
	systemctl status vncserver@:${vnc_port}.service
help:
	echo "in root: sudo make create_user name=your expect user name vnc_port=your expect vnc port number"
