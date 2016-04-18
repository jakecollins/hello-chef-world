# Defines a recipe called map in the helloworld cookbook.
# The recipe installs a script called hellomap.

# This recipe depends on the default recipe from this cookbook (cookbooks/recipes/default.rb)
include_recipe 'helloworld::default'

template '/opt/helloworld/scripts/hellomap' do
  source '/opt/helloworld/scripts/map.erb'
  variables properties: node['helloworld']['properties']
  mode '0755'
end
