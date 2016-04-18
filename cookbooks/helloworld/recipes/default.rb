# Defines the default recipe in the helloworld cookbook.
# The recipe installs a .bash_profile file for the vagrant user and also a script called hellochef.

cookbook_file '/home/vagrant/.bash_profile' do
  source '/home/vagrant/.bash_profile'
  owner 'vagrant'
  group 'vagrant'
end

directory '/opt/helloworld/scripts/' do
  recursive true
end

template '/opt/helloworld/scripts/hellochef' do
  source '/opt/helloworld/scripts/helloworld.erb'
  variables message: node['helloworld']['message']
  mode '0755'
end
