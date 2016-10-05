#!/bin/bash

yum update -y
yum install -y git
pip install ansible

cd /root
git clone https://github.com/6aika/sixodp-infra.git
cd /root/sixodp-infra

# TODO
# aws s3 cp secrets...

ansible-playbook -v -i localhost, deploy.yml > /root/deploy.log
