#!/bin/sh

vagrant up server1
vagrant up server2
vagrant up server3

vagrant ssh server1 -c 'sudo tail -f /var/log/upstart/consul.log'
