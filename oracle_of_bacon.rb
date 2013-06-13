# Needs to be refactored into files
# Handle Spell Check case
#<link><actor>Kevin Bacon</actor><movie>JFK (1991)</movie><actor>Kevin Costner</actor></link>

require './api.rb'


module Oracle
  def self.degrees
    from = 'Kevin Cost'
    from_escape = API.escape(from)
    to = 'Kevin Bacon'
    to_escape = API.escape(to)
    #options are pre-determined by API call
    option = (1)
    # 1 includes movies, 3 includes movies and tv

    response = API.fetch(from_escape, to_escape, option)
    #parsed_response = REXML::Document.new(response)
    return response
  end
end

puts Oracle.degrees