#
# Cookbook:: apachecookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.



package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content 'Hello student in chef-server & testing'
  action :create
end

service 'httpd' do
  action [:enable,:start]
end
