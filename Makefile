SSH_PORT=2201

all:
	@cat Makefile

destroy:
	vagrant destroy

run-cluster:
	./run.sh

run: run-cluster

# Put something like this in your ~/.ssh/config file:

# Host consul
#   Hostname 127.0.0.1
#   Port 2201
#   IdentityFile /Users/YOUR-USERNAME-HERE/.vagrant.d/insecure_private_key
#   User vagrant
#   LocalForward 8300 localhost:8300
#   LocalForward 8400 localhost:8400
#   LocalForward 8500 localhost:8500

ssh:
	@echo "password is taco...er, 'vagrant'."
	ssh vagrant@consul -p $(SSH_PORT)

r: run
s: ssh

.PHONY: all run-cluster run
.PHONY: r
