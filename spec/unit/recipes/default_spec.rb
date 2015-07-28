# encoding: utf-8
require 'spec_helper'

included_recipes = %w()

describe 'win-aws-base::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  context 'includes recipes' do
    before do
      allow_any_instance_of(Chef::Recipe).to receive(:include_recipe).and_call_original
      included_recipes.each do |p|
        allow_any_instance_of(Chef::Recipe).to receive(:include_recipe).with(p)
      end
    end

    included_recipes.each do |p|
      it "includes recipe for #{p}" do
        expect_any_instance_of(Chef::Recipe).to receive(:include_recipe).with(p)
        chef_run
      end
    end

    describe 'conditional recipes' do
      before do
        allow_any_instance_of(Chef::Recipe).to receive(:include_recipe).with('apt')
      end

      describe 'on debian platform' do
        it 'includes recipe for apt' do
          chef_run.node.automatic['platform_family'] = 'debian'
          expect_any_instance_of(Chef::Recipe).to receive(:include_recipe).with('apt')
          chef_run.converge(described_recipe)
        end
      end

      describe 'on redhat platform' do
        it "doesn't include recipe for apt" do
          chef_run.node.automatic['platform_family'] = 'redhat'
          expect_any_instance_of(Chef::Recipe).to_not receive(:include_recipe).with('apt')
          chef_run.converge(described_recipe)
        end
      end
    end
  end
end
