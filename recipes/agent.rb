package 'zabbix-agent'

directory node['zabbix']['log_dir'] do
  owner "zabbix"
  group "zabbix"
  mode 0755
  action :create
end

directory node['zabbix']['agent']['include_conf_dir'] do
  owner "root"
  group "root"
  mode 0755
  action :create
end

service "zabbix-agent" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [ :enable, :start ]
end

template "#{node['zabbix']['conf_dir']}/zabbix_agentd.conf" do
  source "zabbix_agentd.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, "service[zabbix-agent]"
end
