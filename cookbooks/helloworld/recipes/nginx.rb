include_recipe 'helloworld::default'

apt_package 'nginx' do
  version node['helloworld']['nginx_version']
end
