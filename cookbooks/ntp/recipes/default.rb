#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2015, Uma M Katru.
#
# All rights reserved - Do Not Redistribute
#

package "ntp" do 
	action [:install] 
end

service node[:ntp][:service] do
	 action [:enable,:start]
end
