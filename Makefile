all:
	@cat Makefile

destroy:
	vagrant destroy

run-cluster:
	./run.sh

run: run-cluster

r: run

.PHONY: all run-cluster run
.PHONY: r
