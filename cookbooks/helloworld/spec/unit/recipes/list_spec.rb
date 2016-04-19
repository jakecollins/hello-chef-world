require 'spec_helper'

describe 'helloworld::list' do
  cached :chef_run do
    runner = ChefSpec::ServerRunner.new do |node|
      node.set['helloworld']['messages'] = ['test message 1', 'test message 2']
    end
    runner.converge(described_recipe)
  end

  it 'should converge successfully' do
    chef_run
  end

  it 'should render the template with hello messages' do
    expect(chef_run).to render_file('/opt/helloworld/scripts/hellolist').with_content { |content|
      expect(content).to include('test message 1')
      expect(content).to include('test message 2')
    }
  end
end
