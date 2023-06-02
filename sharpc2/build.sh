#!/bin/bash
docker build --secret id=tspwd,src=$(pwd)/tspwd -t georgemulder/sharpc2 .
