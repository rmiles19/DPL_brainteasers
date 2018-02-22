require "pry"

def vowel_count
  puts "Type a word or sentence, press enter,  and I will tell you how many vowels are present."
  vowels = gets.strip.scan(/[a,e,i,o,u]/).count 
  puts ""
  puts "There are #{vowels} vowels in your word or sentence." 
end

vowel_count