require 'spec_helper'

describe 'xen-orchestra::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    platform 'ubuntu', '18.04'
    automatic_attributes['memory']['total'] = '4000000'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  context 'When all attributes are default, on Ubuntu 20.04' do
    platform 'ubuntu', '20.04'
    automatic_attributes['memory']['total'] = '4000000'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  context 'Should throw error when amount of ram is smaller than 3 GB' do
    platform 'ubuntu', '20.04'
    automatic_attributes['memory']['total'] = '2000000'

    it 'converges successfully' do
      expect { chef_run }.to raise_error
    end
  end
end