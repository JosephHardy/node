#!/bin/bash

# Sleep to allow machine to start
sleep 30

# Update packages and repo
yum -y update
yum install -y epel-release

# Install Node and Forever
yum install -y nodejs npm --enablerepo=epel
npm install forever -g

# Create directory for index.html
mkdir /home/webapp
