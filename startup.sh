#ansible install
yum install -y ansible
yum install epel-release

#install init.yml file
cd /tmp/
git clone https://github.com/haruto167/ansible-init.git
cd /tmp/ansible-init/

#ansible start
ansible-playbook init.yml --extra-vars "user_name=superuser"

