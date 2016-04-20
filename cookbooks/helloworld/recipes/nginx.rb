include_recipe 'helloworld::default'

apt_repository 'nginx-php' do
  uri          'ppa:nginx/stable'
  distribution node['lsb']['codename']
end

apt_package 'nginx' do
  version node['helloworld']['nginx_version']
end
