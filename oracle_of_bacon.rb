# Needs to be refactored into files
# Handle Spell Check case
#<link><actor>Kevin Bacon</actor><movie>JFK (1991)</movie><actor>Kevin Costner</actor></link>

require './api.rb'
require './ui.rb'

class ORACLE
  #This method is the runner method for the program, it escapes variables and makes calls
  def self.run
    opening_sequence
    actor1_escaped = API.escape(@actor1)
    actor2_escaped = API.escape(@actor2)
    response = API.fetch(actor1_escaped, actor2_escaped, @option)
    if API.spellcheck?(response) == false
      # UI.display(API.parse(response))
      puts API.parse(response)
    end
  end

  #This method is for the opening sequence of welcome message and questions
  def self.opening_sequence
    UI.display("Welcome to Oracle of Bacon.")
    UI.display("Please enter two actors.")
    UI.display("Actor One?:")
    @actor1 = UI.get
    UI.display("Actor Two?:")
    @actor2 = UI.get
    UI.display("Possible options:")
    UI.display("Option One{1} = only movies")
    UI.display("Option Two{2} = we don't know yet")
    UI.display("Option Three{3} = movies and television")
    @option = UI.get
  end

  #Get rid of this at some point... really
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

ORACLE.run