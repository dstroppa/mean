directory "/journal" do
  group 'mongod'
  owner 'mongod'
  mode '0755'
end

link "/data/journal" do
  to '/journal'
  group 'mongod'
  owner 'mongod'
end