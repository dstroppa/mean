Chef::Log.warn("MongoDB cluster_name set to '#{node['mongodb']['cluster_name']}'")
if node[:mongodb][:cluster_name] != nil
  node.default["mongodb"]["cluster_name"] = node[:mongodb][:cluster_name]
end

Chef::Log.warn("MongoDB is_replicaset set to '#{node['mongodb']['is_replicaset']}'")
if node[:mongodb][:is_replicaset] != nil
  node.default["mongodb"]["is_replicaset"] = node[:mongodb][:is_replicaset]
end

Chef::Log.warn("MongoDB shard_name set to '#{node['mongodb']['shard_name']}'")
if node[:mongodb][:shard_name] != nil
  node.default["mongodb"]["shard_name"] = node[:mongodb][:shard_name]
end

Chef::Log.warn("Chef env set to '#{node['chef_environment']}'")
if node[:chef_environment] != nil
  node.default["chef_environment"] = node[:chef_environment]
end
