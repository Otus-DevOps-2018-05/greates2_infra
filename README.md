For ssh-acces on one line use:

	ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>

Create alias:
	(плохой метод, алисас системы)
	alias 'someinternalhost=ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>'

	now command someinternalhost get second host

	Второй вариант (через ssh_config):

	Host bastion
	User greates
	AddKeysToAgent yes
	CertificateFile ~/.ssh/gcp
	Port 22
	HostName 35.205.215.26
	ForwardAgent yes

	Host someinternalhost
	HostName 10.132.0.3
	ForwardAgent yes
	Port 22
	User greates
	CertificateFile ~/.ssh/gcp
	ProxyJump bastion
	
	Для подключения теперь используем команду ssh someinternethost

IP addresses:
bastion_IP = 35.205.215.26
someinternalhost_IP = 10.132.0.3
