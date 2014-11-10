Chef::Log.info("Creating /journal directory with owned by '#{node[:mongodb][:group]}':'#{node[:mongodb][:user]}' ")

directory "/journal" do
  group node['mongodb']['group']
  owner node['mongodb']['user']
  mode '0755'
end

link "/data/journal" do
  to '/journal'
  group node['mongodb']['group']
  owner node['mongodb']['user']
end