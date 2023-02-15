prepare:
	vagrant box add jasonc/centos7
	vagrant init jasonc/centos7
	vagrant up

up:
	vagrant up

ssh:
	vagrant ssh

status:
	vagrant status
