For ssh-acces on one line use:\n
	ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>\n
\n
Create alias:\n
	alias 'someinternalhost=ssh -i ~/.ssh/<key-name> -A <user>@<host> ssh <host 2>'\n
	now command someinternalhost get second host\n
