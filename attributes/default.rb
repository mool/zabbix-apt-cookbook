# Zabbix config
default['zabbix']['conf_dir'] = '/etc/zabbix'
default['zabbix']['log_dir'] = '/var/log/zabbix'

# Agent config
default['zabbix']['agent']['servers'] = ['192.168.1.29']
default['zabbix']['agent']['include_conf_dir'] = '/etc/zabbix/zabbix_agentd.d'

# Server config
default['zabbix']['server']['db_password'] = 'zabbixpass'
