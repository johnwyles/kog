# Cucumber
require 'cucumber/formatter/unicode'
$KCODE = 'u' unless Cucumber::RUBY_1_9

# Fakeweb
require 'fakeweb'

# rSpec
require File.expand_path(File.dirname(__FILE__) + "/../../spec/spec_helper")

# Kestrel_OpenGraph
require 'kog'
