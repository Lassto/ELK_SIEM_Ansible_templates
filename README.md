# ELK templates files

Put files elasticsearch.yml.j2 , filebeat.yml.j2, kibana.yml.j2 and logstash-main.conf.j2 are templates files to put in templates directory

# Ansible installation file

File install_ansible.sh is for installing Ansible in ansible host

# ELK installation in siem host (use site.yml)

Type the command, ansible-playbook site.yml

# auditbeat installation in client host (use site.yml)

Type the command, ansible-playbook site_auditbeat.yml
