# User Interface
require 'pp'

class UI
  #The following method displays things to command line
  def self.display(msg)
    puts msg.to_s
  end
  #The following method gets information from the user
  def self.get
    return gets.chomp
  end
end