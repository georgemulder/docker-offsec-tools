#!/bin/bash

if [ $# -ge 1 ]
then
	docker build --build-arg PASSWORD=$1 -t georgemulder/sharpc2 .
else
	docker build -t georgemulder/sharpc2 .
fi
