Given /^that I have the URL (.*)$/ do |url|
  @url = url
  good_data = File.open(File.dirname(__FILE__) + '/../../spec/kog/xhtml/good_data.xhtml').read
  FakeWeb.register_uri(:get, @url, :body => good_data)
end

When /^I parse it for "([^\"]*)"$/ do |field|
  @field = field
  @body = OpenGraph::Parser.parse(@url)
  @body.should_not be_nil
end

Then /^I expect to see "([^\"]*)"$/ do |result|
  @body.send("#{@field}").should == result
end
