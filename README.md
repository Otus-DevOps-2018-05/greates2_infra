For ssh-acces on one line use:
	ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>

Create alias:
	alias 'someinternalhost=ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>'
	now command someinternalhost get second host
