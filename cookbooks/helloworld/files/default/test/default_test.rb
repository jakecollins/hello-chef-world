require 'minitest/spec'

# Example test can be found at http://git.io/Fahwsw

describe_recipe 'helloworld::default' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Resources

  it 'should create .bash_profile file' do
    file('/home/vagrant/.bash_profile').must_exist.with(:owner, 'vagrant').must_include('Created by Chef')
  end

  it 'should create /opt/helloworld/scripts/ directory' do
    directory('/opt/helloworld/scripts/').must_exist
  end

  it 'should create hellochef file' do
    file('/opt/helloworld/scripts/hellochef').must_exist.must_include('Hello from the kitchen')
  end
end
