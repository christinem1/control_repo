class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDB599/k777QsTfaALS2UdK6zht5QY05fOp3sqbUfj+zxamVWJ3eyC94aZQDrtbiz9ie+BrWOQzyzvAbfLW2JwXyOmO1RcjQEBTiAHM4ZW7Kk7wdKJvqr/WdOqDe/iRUkFa9ZgV7ie938MMhnhyBBXsyZ77ytReaLJ4W7b92U8pWy1kCuk8PLSA054fOQM2fOduRPNjqVgz2aK9YHkRykmficfJPEXDfhQUgrgfbKhYbpTLJYOxW+Hr4U2yQHMumXHSh1t0StZ8n82i83HT4BIfad3o6havBs2ueYYSozmkeQGGnE65+y4viqdDSVQbziwGOnnSNB1b3p15bqi2euNT',
	}  
}
