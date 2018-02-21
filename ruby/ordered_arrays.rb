# brainteaser. ask user to input a number set (however you want them to)
# return their number list after you have put it in an array
# ask user to request highest, lowest, etc. number from their array.

require "pry"
@user_array = []

#this  method 'number_set_list' asks the user to choose one of the 3 sets I have already
#^ created, puts their choice into their array, and re-displays it for them.
puts "Welcome! Choose your favorite set of numbers:"
  def number_set_list
    puts "1) 1, 3, 5, 7, 9, 11, 13, 15, 17, 19 (ODDBALL)"
    puts "2) 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 (EVEN STEVEN)"
    puts "3) 2, 3, 5, 7, 11, 13, 17, 19, 23, 29 (MATH NERD)"
    puts "4) Exit game, because I am no fun. (PARTY-POOPER)"

    user_input = gets.strip.to_i
    case
      when user_input == 1
        @user_array == [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        puts @user_array
      when  user_input == 2
        @user_array == [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
        puts @user_array
      when  user_input == 3
        @user_array == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        puts @user_array
      when user_input == 4
        exit
      else
        puts "Invalid input! Remember to type 1, 2, 3, or 4 to make your choice. Try again."
        number_set_list
    end
  end

#this method allows the player to request a number from their array
  puts "Lets play a game with the set you chose! Choose one of the following options:"
  puts user_array
    def array_request
      puts "1) Give me the highest number in my number list please" #array.max
      puts "2) Give me the lowest number in my number list please" #array.min
      puts "3) Just give me a random number from my list!" #array.sample
      puts "4) Shuffle up my list!" #array.shuffle
      puts ""

    end



number_set_list

#
# def menu
#   puts "======== Welcome ========"
#   puts "Please input some numbers"
#   puts "ex. 1 2 3 4 5 6 7"
#   numArray = gets.strip.split(' ')
#   puts "What would you like to know about your numbers?"
#   puts "1) Highest number"
#   puts "2) Lowest number"
#   puts "3) I don't like numbers...please let me leave now"
#   choice = gets.strip.to_i
#   case choice
#     when 1
#       number_output(numArray, "high")
#     when 2
#       number_output(numArray, "low")
#     when 3
#       exit
#     else
#     puts "Invalid choice, you have to start all over"
#   end
# end
#
# def number_output(arr, choice)
#   min, max = nil, nil
#   arr.each do |value|
#     num = value.to_i
#     min = num if min.nil? || num < min
#     max = num if max.nil? || max < num
#   end
#   if choice === "high"
#     puts "Your hightest number is #{max}"
#   else
#     puts "Your lowest number is #{min}"
#   end
# end
#
# menu
