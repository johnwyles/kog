require 'nokogiri'
require 'httparty'

module OpenGraph
  module Parser
    # Attributes that must be present according to the protocol
    REQUIRED_ATTRIBUTES = ['image', 'title', 'type', 'url']

    # Parse
    def self.parse(url)
      # Get the document
      begin
        body = HTTParty.get(url).body
        doc = Nokogiri::HTML.parse(body)
      rescue HTTParty::ResponseError, HTTParty::UnsupportedURIScheme, HTTParty::UnsupportedFormat,
          URI::InvalidURIError, SocketError
        return nil
      end

      # Initialize the temporary hash
      type = Hash.new

      # Parse the document and append to the temporary hash
      doc.css('meta').each do |meta|
        if !meta.attribute('property').nil? && meta.attribute('property').to_s.match(/^og:(.+)$/i)
          type[$1.gsub('-','_')] = meta.attribute('content').to_s
        end
      end

      # None of the required attributes were found
      REQUIRED_ATTRIBUTES.each { |key| return nil if !type.has_key?(key) }

      # Return the representative OpenGraph object
      return OpenGraph::Object.new(type)
    end
  end
end
