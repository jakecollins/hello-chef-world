require 'spec_helper'

describe 'helloworld::nginx' do
  cached :chef_run do
    runner = ChefSpec::ServerRunner.new do |node|
      node.set['lsb']['codename'] = 'dummy-for-test'
    end
    runner.converge(described_recipe)
  end

  it 'should converge successfully' do
    chef_run
  end

  it 'shound install nginx version 1.8.1-1+precise0' do
    expect(chef_run).to install_apt_package('nginx').with(version: '1.8.1-1+precise0')
  end
end
