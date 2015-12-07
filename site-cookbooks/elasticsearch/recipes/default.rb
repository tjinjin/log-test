#
# Cookbook Name:: elasticsearch
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "java"

version='2.x'

bash 'GPG-KEY-elasticsearch' do
  code 'rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch'
  not_if "yum list installed | grep elasticsearch"
end

yum_repository "elasticsearch-2.x" do
  description "Elasticsearch #{version} packages"
  baseurl "http://packages.elastic.co/elasticsearch/#{version}/centos"
  gpgkey "http://packages.elastic.co/GPG-KEY-elasticsearch"
  action :create
end

package "elasticsearch"

service "elasticsearch" do
  action [ :start, :enable ]
end
