# zabbix-apt cookbook

Install Zabbix server and agent via apt from the official Zabbix repository.

# Requirements

Works on:
* Ubuntu

# Usage

## Agent

To install Zabbix agent just add `recipe[zabbix]` to the runlist.

## Server

To install Zabbix server just add `recipe[zabbix]` and
`recipe[zabbix::server]` to the runlist.

# Attributes

* `['zabbix']['conf_dir']` - Zabbix configuration directory, by default
  "/etc/zabbix"
* `['zabbix']['log_dir']` - Zabbix log directory, by default
  "/var/log/zabbix"
* `['zabbix']['agent']['servers']` - Array of Zabbix servers
* `['zabbix']['agent']['include_conf_dir']` - Zabbix agent's include
  config directory, by default "/etc/zabbix/zabbix_agentd.d" 
* `['zabbix']['server']['db_password']` - Zabbix database password

# Recipes

* default.rb - Adds Zabbix official repository and calls agent.rb
* agent.rb - Installs and configures Zabbix agent
* server.rb - Installs and configures Zabbix agent


# Author

Author:: Pablo Gutierrez del Castillo (<pablo.gutierrez@sitrack.com>)
