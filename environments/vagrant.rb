# Defines the default attributes for a Chef environment. These will replace corresponding default attributes in Chef cookbooks.
# See http://docs.opscode.com/essentials_environments.html

default_attributes :helloworld => {
  :message => 'hello chef world ruby environment message',
  :messages => ['environment message one', 'environment message two'],
  :properties => { :key1 => 'environment value 1', :key2 => 'environment value 2'}
}
