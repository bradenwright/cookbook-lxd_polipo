#
# Cookbook Name:: lxd_polipo
# Attributes:: default
#
# Copyright (C) 2015 Braden Wright
#
# All rights reserved - Do Not Redistribute
#

default[:polipo][:config][:logSyslog] = true
default[:polipo][:config][:logFile] = "/var/log/polipo/polipo.log"
default[:polipo][:config][:proxyAddress] = '"0.0.0.0"'
default[:polipo][:config][:disableServersList] = false
default[:polipo][:config][:disableIndexing] = false
