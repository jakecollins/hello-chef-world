require 'spec_helper'

# chefspec examples: https://github.com/sethvargo/chefspec/tree/master/examples

describe 'helloworld::default' do
  let :chef_run do
    runner = ChefSpec::ServerRunner.new
    runner.converge(described_recipe)
  end

  it 'should converge successfully' do
    chef_run
  end

  it 'should create .bash_profile file' do
    expect(chef_run).to create_cookbook_file('/home/vagrant/.bash_profile').with(
      user: 'vagrant',
      group: 'vagrant'
    )
  end

  it 'should create /opt/helloworld/scripts/ directory' do
    expect(chef_run).to create_directory('/opt/helloworld/scripts/')
  end

  it 'should create hellochef file' do
    expect(chef_run).to create_template('/opt/helloworld/scripts/hellochef')
  end
end
