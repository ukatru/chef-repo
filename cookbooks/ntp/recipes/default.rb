#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2015, UKATRU
#
# All rights reserved - Do Not Redistribute
#
package node[:ntp_pkg] do
  action :install
end

service 'ntpd' do
  action [ :enable, :start ]
end

cookbook_file "/etc/ntp.conf" do
  source "ntp.conf"
  mode "0644"
  notifies :restart, 'service[ntpd]'
end


