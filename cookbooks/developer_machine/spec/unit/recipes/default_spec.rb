#
# Cookbook:: developer_machine
# Spec:: default
#
# Copyright (c) 2018 Connor Conway, All Rights Reserved.

require 'spec_helper'

describe 'developer_machine::default' do
  context 'when all attributes are default, a windows 2016 server' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2016')
      runner.converge(described_recipe)
    end

    it 'is running the chrome recipe' do
      expect(chef_run).to include_recipe('developer_machine::chrome')
    end

    it 'is running the git recipe' do
      expect(chef_run).to include_recipe('developer_machine::git')
    end

    it 'is running the sublime recipe' do
      expect(chef_run).to include_recipe('developer_machine::sublime')
    end

    it 'is running the visual studio recipe' do
      expect(chef_run).to include_recipe('developer_machine::visual_studio')
    end
  end
end