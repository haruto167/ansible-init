#!/bin/sh

echo "\$1（作成ユーザ）: $1"
echo "\$2（作成パスワード）: $2"

#ansible install
yum install -y ansible
yum install epel-release

#install init.yml file
rm -r /tmp/ansible-init
cd /tmp/
git clone https://github.com/haruto167/ansible-init.git
cd /tmp/ansible-init/

#ansible start
echo 'ansible-playbook init.yml --extra-vars "user_name=$1"'
ansible-playbook init.yml --extra-vars "user_name=$1 password=$2"
