#
# Cookbook Name:: mynginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'update_apt' do
  command 'apt-get update'
end

apt_package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

template '/tmp/bash_profile.sh' do
  source 'bash_profile.sh.erb'
  action :create
end

execute 'edit_bash_profile' do
  command 'sh /tmp/bash_profile.sh'
  action :run
end
