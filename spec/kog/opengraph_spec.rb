# encoding: utf-8
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))
require 'kog'

describe 'OpenGraph' do
  it 'should do nothing' do
    OpenGraph.instance_variables.should be_empty
  end
end
