require "pry"

def alph_order_list
  puts "Type in a list of items, with a comma in between each item. Press enter when you are done."
  puts "I will rearrange your list and put it in alphabetical order!"
  list = gets.strip.downcase.gsub(" ", "").split(",").sort
  puts list
  puts ""
  puts "Here is your list again, in reverse alphabetical order"
  puts list.reverse
end 

alph_order_list