#
# Cookbook Name:: lxd_polipo
# Recipe:: default
#
# Copyright (C) 2015 Braden Wright
#
# All rights reserved - Do Not Redistribute
#

package 'polipo'

template "/etc/polipo/config" do
  mode "0644"
  notifies :restart, 'service[polipo]'
end

service "polipo"

