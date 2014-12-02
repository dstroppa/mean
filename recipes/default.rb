if node[:mongodb][:cluster_name] != nil
  node.mongodb.cluster_name = node[:mongodb][:cluster_name]
end

if node[:mongodb][:is_replicaset] != nil
  node.mongodb.is_replicaset = node[:mongodb][:is_replicaset]
end

if node[:mongodb][:shard_name] != nil
  node.mongodb.shard_name = node[:mongodb][:shard_name]
end

if node[:chef_environment] != nil
  node.chef_environment = node[:chef_environment]
end
