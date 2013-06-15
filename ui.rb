# User Interface
require 'pp'

class UI
  #The following method displays things to command line
  def self.display(msg)
    sleep(1)
    puts msg.to_s
  end
  #the following method displays things to commans line with print method.
  def self.display_print(msg)
    sleep(1)
    print msg.to_s
  end
  #The following method gets information from the user
  def self.get
    return gets.chomp
  end
  #The following method will take, then display options to the screen
  def self.display_options(options)
    counter = 1
    options.take(5).each do |option|
      UI.display("[#{counter}] - #{option}")
      counter = counter + 1
    end
  end
  #the following method will display a calculating bar, to make it appear as though the computer is doing work.
  def self.calculating
    (1...70).each do |this_star|
      if this_star == 30
        'CALCULATING'.each_char do |letter|
          sleep(1.0/24.0)
          print letter
        end
      end
      sleep(1.0/24.0)
      print '*'
    end
  end
end