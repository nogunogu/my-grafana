#
# Cookbook:: my-grafana
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_repository 'grafana' do
  uri 'https://packagecloud.io/grafana/stable/debian/'
  components ['main']
  distribution 'stretch'
  action :add
  key 'https://packagecloud.io/gpg.key'
end

apt_update

apt_package 'grafana'

service 'grafana-server' do
  action [:enable, :start]
end
