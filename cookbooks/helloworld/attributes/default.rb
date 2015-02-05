# Defines the default attributes for the recipes in this cookbook.
# See http://docs.opscode.com/chef_overview_attributes.html

default['helloworld']['message'] = 'hello chef world default message!'
default['helloworld']['messages'] = ['default message one', 'default message two']
default['helloworld']['properties'] = { :key1 => 'default value 1', :key2 => 'default value 2'}
