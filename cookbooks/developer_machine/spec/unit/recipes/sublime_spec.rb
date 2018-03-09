#
# Cookbook:: developer_machine
# Spec:: default
#
# Copyright (c) 2018 Connor Conway, All Rights Reserved.

require 'spec_helper'

describe 'developer_machine::sublime' do
  context 'when all attributes are default, a windows 2016 server' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2016')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs sublime' do
      expect(chef_run).to upgrade_chocolatey_package('sublimetext3')
    end

    it 'adds sublime to the machines path variable' do
      #TODO find out how to check if path variable is being set
    end
  end
end