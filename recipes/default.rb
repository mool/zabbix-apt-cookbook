#
# Cookbook Name:: zabbix-apt
# Recipe:: default
#

apt_repository "zabbix" do
  uri "http://repo.zabbix.com/zabbix/2.0/ubuntu"
  distribution "precise"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "79EA5ED4"
end

include_recipe 'zabbix-apt::agent'
