# Handles API call
require 'rexml/document'
require 'open-uri'
require 'cgi'


class API
  # This method 'escapes' whitespace from strings
  def self.escape(str)
    return CGI::escape(str)
  end

# We are assuming that arguments have already been escaped.
  def self.fetch(from, to, option)
    return open("http://oracleofbacon.org/cgi-bin/xml?a=#{from}&b=#{to}&u=#{option}&p=google-apps").read
  end

# This parses our XML
  def self.parse
   # parsed_response = REXML::Document.new(response)
  end
end
