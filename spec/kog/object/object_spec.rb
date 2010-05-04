require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'spec_helper'))
require 'kog'

describe 'OpenGraph' do
  describe 'Object' do
    before(:each) do
      hash = {
        'title' => 'Foo',
        'url' => 'http://example.com/foo/',
        'type' => 'band',
        'image' => 'http://example.com/foo/foo.jpg',
        'foo' => 'bar'
      }
      @data = OpenGraph::Object.new(hash)
    end

    describe '.schema' do
      it 'should give the full schema for the type' do
        @data.schema.should == 'organization'
      end
    end

    describe '.type' do
      it 'should return the type specified for it' do
        @data.type.should == 'band'
      end
    end

    describe '.type?' do
      it 'should return the type specified for it' do
        @data.type?('band').should be_true
        @data.type?('movie').should be_false
      end
    end

    describe '.title' do
      it 'should return the title specified for it' do
        @data.title.should == 'Foo'
      end
    end

    describe '.foo' do
      it 'should return the foo specified for it' do
        @data.foo.should == 'bar'
      end
    end
  end
end
