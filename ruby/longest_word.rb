require "pry"

def longest_word
  puts "Type in a sentence and I'll tell you the longest word you used!"
  str = gets.strip.split(" ").max_by(&:length)
  puts ""
  puts "and your longest word is:"
  puts str
end

longest_word