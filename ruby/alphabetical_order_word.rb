require "pry"

def alph_order_word
puts "Type a word. I will scramble the word and give it back to you in alphabetical order"
str = gets.strip.downcase.chars.sort.join
puts str
puts ""
puts "Here is your word again, but in reverse alphabetical order"
str = str.reverse
puts str
end

alph_order_word