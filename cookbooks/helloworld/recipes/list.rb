# Defines a recipe called list in the helloworld cookbook. 
# The recipe installs a script called hellolist.

include_recipe 'helloworld::default' # This recipe depends on the default recipe from this cookbook (cookbooks/recipes/default.rb)

template '/opt/helloworld/scripts/hellolist' do
  source '/opt/helloworld/scripts/list.erb'
  variables :messages => ['message one', 'message two']
  mode '0755'
end
