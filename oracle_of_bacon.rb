require 'open-uri'
require 'uri'
require 'net/http'

def bacon
  from = ('GeorgeClooney')
  to = ('KevinBacon')
  #options are pre-determined by API call
  option = (1)
  # 1 includes movies, 3 includes movies and tv

  uri = URI.parse("http://oracleofbacon.org/cgi-bin/xml?a=#{from}&b=#{to}&u=#{option}&p=google-apps")
  response = Net::HTTP.get(uri)
  #response = open("http://oracleofbacon.org/cgi-bin/xml?a=#{from}&b=#{to}&u=#{option}&p=#{location}").read

  puts response

end

bacon