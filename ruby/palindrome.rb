# To find out if a word or sentence is a palindrome:
# receive user input
# strip array to downcase and delete spaces
# equate if it is palindrome - boolean?
# show answer
# menu to play again or exit game


require "pry"
require "colorize"


def menu
  puts "Is it a palindrome?"
  puts "Lets find out!"
  puts "type 1 to play or 2 to exit game"
  response = gets.strip.to_i
    if response == 1
      play_game 
    elsif response == 2
      exit
    else 
      puts "Invalid input. Try again."
      menu
    end 
end

def play_game
  puts "Enter your word/phrase here and I will tell you..."
  response = gets.strip.downcase.to_s 
    case 
      when #when response is palindrome...
        puts "#{response} is a palindrome! Cool."
      when # when response is not palindrome...
        puts " #{response} is NOT a palindrome. Dang."
        puts "AGAIN!!"
        puts ""
    end 
menu
end 

def exit
  puts "Thanks for playing, smell ya later"
  exit
end 

menu 



# ## Alex Shapiro's result:
# def rev_string
#   puts "please enter a string and I will check to see if its a pallindrome"
#   string = gets.strip.downcase
#   splits = string.split("")
#   puts "thank you. checking............"
#   rev = []
#   string.size.times {rev << splits.pop}
#   rev.join
#   if rev.join == string
#     puts "NICE!  totally a pallindrome"
#   else puts " hmmm looks like its not a pallindrome"
#   end

# end
#   puts rev_string


# Tyson Au's result
# def menu
#   puts
#   puts "-------------PALINDROME CHECKER-------------"
#   puts
#   puts 'Type out your best example of a palindrome!'
#   @palindrome = []
#   input = gets.strip.to_s
#   check(input)
# end
  
# def check(input)
#   puts
#   puts "Running the palindrome checker..."
#   puts
#   input.each_char do |char|
#     @palindrome << char
#   end
#   @palindrome.each_with_index do |char, i|
#     if char != @palindrome[@palindrome.length - (i + 1)]
#       puts "#{input} is not a palindrome. Try again."
#       menu
#     end
#   end
#   puts "NICE! #{input} is a palindrome!"
#   menu
# end
# menu


# Andrew Locke's result
# require 'pry' 
# require 'colorize'

# @hist = []

# def welcome 
#   if @hist == []
#     puts "=" * 20 
#     puts "Welcome to Palendromer"  
#     puts "=" * 20 
#     puts "Please give me a word or phrase to test"
#   else 
#     puts "would you like to continue? (Y/N)" 
#     choice = gets.strip.downcase 
#     if choice == "y"
#       puts "History:"
#       puts @hist
#       puts "=" * 20 
#       puts "give me your script"  
#       puts "=" * 20 
#     elsif choice == "n"
#       puts "Thanks for using Palendromer"
#       puts "Goodbye"
#       exit 
#     else 
#       puts "Invalid entry, please try again".colorize(:red)
#     end 
#   end 
#   user_input = gets.strip.downcase 
#   @hist << user_input
#   @str_arr = user_input.split("")
#   reverse 
# end 

# def reverse
#   @rev =[] 
#   i = -1 
#     @str_arr.each do 
#         @rev << @str_arr[i]
#         i -= 1
#     end 
#   check
# end 

# def check 
#   rev = @rev.to_s
#   rev_str = @rev.join
#   user = @str_arr.to_s
#   user_choice =@str_arr.join
#   puts "your input was \"#{user_choice}\""
#   puts "Backwards your input is \"#{rev_str}\""
#   if rev  == user
#     outcome = "Palendrome"
#     puts "This is a palendrome".colorize(:green)
    
#   else 
#     outcome = "Not a palendrome"
#     puts "Sorry, this is not a palendrome".colorize(:red)
#   end 
#   welcome 
# end 

# while true 
#   welcome
# end 