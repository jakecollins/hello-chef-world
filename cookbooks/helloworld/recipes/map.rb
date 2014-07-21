# Defines a recipe called map in the helloworld cookbook. 
# The recipe installs a script called hellomap.

include_recipe 'helloworld::default' # This recipe depends on the default recipe from this cookbook (cookbooks/recipes/default.rb)

template '/opt/helloworld/scripts/hellomap' do
  source '/opt/helloworld/scripts/map.erb'
  variables :properties => { :key1 => 'value 1', :key2 => 'value 2'}
  mode '0755'
end
