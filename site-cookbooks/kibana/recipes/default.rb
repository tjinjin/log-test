#
# Cookbook Name:: kibana
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'install kibana' do
  code <<-EOS
  wget https://download.elastic.co/kibana/kibana/kibana-4.3.0-linux-x64.tar.gz
  tar zxvf kibana-4.3.0-linux-x64.tar.gz
  mv kibana-4.3.0-linux-x64 /usr/local/kibana4
  EOS
  not_if "which kibana"
end
