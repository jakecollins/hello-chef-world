# Defines a recipe called list in the helloworld cookbook.
# The recipe installs a script called hellolist.

# This recipe depends on the default recipe from this cookbook (cookbooks/recipes/default.rb)
include_recipe 'helloworld::default'

template '/opt/helloworld/scripts/hellolist' do
  source '/opt/helloworld/scripts/list.erb'
  variables messages: node['helloworld']['messages']
  mode '0755'
end
