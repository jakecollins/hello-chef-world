require 'minitest/spec'

describe_recipe 'helloworld::nginx' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Resources

  it 'should install nginx version 1.10.1-3+precise3' do
    package('nginx').must_be_installed.with(:version, '1.10.1-3+precise3')
  end
end
