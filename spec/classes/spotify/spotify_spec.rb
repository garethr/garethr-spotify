require 'spec_helper'

describe 'spotify', :type => :class do

  context 'with no parameters' do
    it { should contain_package('spotify-client')}
    it { should contain_apt__source('spotify')}
  end

end
