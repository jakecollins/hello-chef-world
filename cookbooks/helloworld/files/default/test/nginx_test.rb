require 'minitest/spec'

describe_recipe 'helloworld::nginx' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Resources

  it 'should install nginx version 1.8.1-1+precise0' do
    package('nginx').must_be_installed.with(:version, '1.8.1-1+precise0')
  end
end
