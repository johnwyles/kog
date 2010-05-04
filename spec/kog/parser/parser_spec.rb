require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'spec_helper'))
require 'kog'

describe 'OpenGraph' do
  describe 'Parser' do
    before(:each) do
      good_data = File.open(File.dirname(__FILE__) + '/../xhtml/good_data.xhtml').read
      bad_data = File.open(File.dirname(__FILE__) + '/../xhtml/bad_data.xhtml').read
      FakeWeb.register_uri(:get, 'http://example.com/good/data/123', :body => good_data)
      FakeWeb.register_uri(:get, 'http://example.com/bad/data/123', :body => bad_data)
    end

    describe '.parse' do
      it 'should return nil if the URL is invalid' do
        OpenGraph::Parser.parse('bad://!#*@badurl.com/bad/data!/123').should be_nil
      end

      it 'should return nil if the required attributes are missing or invalid' do
        OpenGraph::Parser.parse('http://example.com/bad/data/123').should be_nil
      end

      it 'should return an OpenGraph::Type instance if the required attributes are present and valid' do
        OpenGraph::Parser.parse('http://example.com/good/data/123').should be_instance_of(OpenGraph::Object)
      end

      it 'should return a valid title if the attributes are present and valid' do
        data = OpenGraph::Parser.parse('http://example.com/good/data/123')
        data.title.should == 'Foo'
      end
    end
  end
end
