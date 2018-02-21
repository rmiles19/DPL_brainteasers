require "pry"

def uppercase
  puts "Write in a sentence and I'll give it back to you with every word uppercase!"
  str = gets.strip.split.map(&:capitalize).join(" ")
  puts str
end

uppercase
