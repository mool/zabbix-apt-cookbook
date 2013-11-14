include_recipe 'mysql::server'

directory "/var/cache/local/preseeding" do
  owner "root"
  group "root"
  mode 0755
  recursive true
end

execute "preseed zabbix" do
  command "debconf-set-selections /var/cache/local/preseeding/zabbix-server-mysql.seed"
  action :nothing
end

template "/var/cache/local/preseeding/zabbix-server-mysql.seed" do
  source "zabbix-server-mysql.seed.erb"
  owner "root"
  group "root"
  mode "0600"
  notifies :run, "execute[preseed zabbix]", :immediately
end

%w(zabbix-server-mysql zabbix-frontend-php zabbix-java-gateway).each do |zabbix_pkg|
  package zabbix_pkg
end

service "zabbix-server" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [ :enable, :start ]
end

template "#{node['zabbix']['conf_dir']}/zabbix_server.conf" do
  source "zabbix_server.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, "service[zabbix-server]"
end
