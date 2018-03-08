#
# Cookbook:: initialise_windows
# Spec:: default
#
# Copyright (c) 2018 Connor Conway, All Rights Reserved.

require 'spec_helper'

describe 'initialise_windows::default' do
  context 'when all attributes are default, a windows 2016 server' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2016')
      runner.converge(described_recipe)
    end

    it 'is running the chrome recipe' do
      expect(chef_run).to include_recipe('initialise_windows::chrome')
    end

    it 'is running the git recipe' do
      expect(chef_run).to include_recipe('initialise_windows::git')
    end
  end
end