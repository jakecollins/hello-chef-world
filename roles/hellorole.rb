# Roles can add recipes or other roles to the run list. They can also replace the default attributes from the Chef environment and/or cookbooks.  
# See http://docs.opscode.com/essentials_roles.html

run_list 'recipe[helloworld::list]', 'recipe[helloworld::map]', 'recipe[helloworld::nginx]'
default_attributes :helloworld => {
  :messages => ['role message one', 'role message two'],
  :properties => { :key3 => 'role value 3', :key4 => 'role value 4'}
}
