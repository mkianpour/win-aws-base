require 'spec_helper'

describe package('apt'), if: os[:family] == 'ubuntu' do
  it { should be_installed }
end
