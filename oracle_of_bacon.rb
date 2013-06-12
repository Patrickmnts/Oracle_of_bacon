# Needs to be refactored into files
# Handle Spell Check case
#


require 'open-uri'
require 'cgi'
# require 'uri'
# require 'net/http'

def bacon
  from = 'Tina Turner'
  from_escape = CGI::escape(from)
  to = 'Kevin Bacon'
  to_escape = CGI::escape(to)
  #options are pre-determined by API call
  option = (1)
  # 1 includes movies, 3 includes movies and tv

  #uri = URI.parse("http://oracleofbacon.org/cgi-bin/xml?a=#{from}&b=#{to}&u=#{option}&p=google-apps")
  #response = Net::HTTP.get(uri)
  response = open("http://oracleofbacon.org/cgi-bin/xml?a=#{from_escape}&b=#{to_escape}&u=#{option}&p=google-apps").read

  puts response

end

bacon