node[:deploy].each do |application, deploy|
	directory "/journal" do
	  group '#{deploy[:mongodb][:group]}'
	  owner '#{deploy[:mongodb][:user]}'
	  mode '0755'
	end

	link "/data/journal" do
	  to '/journal'
	  group '#{deploy[:mongodb][:group]}'
	  owner '#{deploy[:mongodb][:user]}'
	end
end