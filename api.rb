# Handles API call
require 'pp'
require 'nokogiri'
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

# This method checks if you spelled the actors name right
  def spellcheck?(response)
    return
  end

# This parses our XML
  def self.parse(response)
    parsed_response = Nokogiri::XML(response)
    # The next two lines get specific elements from the XML document
    actors = parsed_response.xpath("//actor")
    movies = parsed_response.xpath("//movie")
    # The following three variables are used in the response loop
    movieIndex = 0
    response = ""
    firstPerson = true
    # This loop builds the final response
    actors.each do |actor|
      response = response + actor
      if (movies[movieIndex])
        movie = movies[movieIndex].text
        response = response + (firstPerson ? "" : " who") + " was in #{movie} with "
      end
      movieIndex += 1
      firstPerson = false
    end
    return response
  end
end
