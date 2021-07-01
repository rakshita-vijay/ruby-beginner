#!/usr/bin/env ruby

def hello_world
  "Hello world!"
end

puts hello_world
# ------------------------------------------------------------------------------------------
# define a method and invoke it
def hi(name)
  "Hello #{name}"
end

puts hi("Rakshita")   # with parens

puts hi "Vijay"     # without parens

# ------------------------------------------------------------------------------------------
# loops
for char_position in 1..line_no do
  result += (char_position == 1 or char_position == line_no) ? "1" : "0"
end
# ------------------------------------------------------------------------------------------
# for getting a string from the user

def str_read()
  print "Enter any string: "
  return gets.strip
end
# ------------------------------------------------------------------------------------------
# Getting user input (with chomp)
print "Please enter your name: "
name = gets.chomp

while name != ''
  puts "Hello [#{name}]"
  print "Please enter your name: "
  name = gets.strip
end
# ------------------------------------------------------------------------------------------
# conditionally invoking different methods based on user input
def dog()
  "I am a dog."
end

def cat()
  "I am a cat."
end

puts "Enter one or two: "
num = gets.strip.to_i

puts (num == 1) ? "#{dog}" : "#{cat}"
# ------------------------------------------------------------------------------------------
# validating user input and printing a message to the user
def dog()
  "I am a dog."
end

def cat()
  "I am a cat."
end

puts "Enter 'dog' or 'cat': "
opt = gets.strip.downcase

if opt != ''
  puts (opt == 'dog') ? "#{dog}" : "#{cat}"
else
  puts "You have entered a blank space."
end

# ------------------------------------------------------------------------------------------
# for splitting the string/sentence

def str_split(str)
  return str.split(' ')
end

# ------------------------------------------------------------------------------------------
# for collecting the split & reversed words into a complete sentence

def split_rev_words_collect_into_sentences(as_sentence)
  return as_sentence.collect {|element| element.reverse}.join(' ')
end

str_rev = split_rev_words_collect_into_sentences(str_split(str_read))
puts "Reversed words in the given string: #{str_rev}"

# ------------------------------------------------------------------------------------------
# for capitalizing the 1st letter of each word

def capitalising_first_letter_of_each_word(into_a_sentence)
  return into_a_sentence.collect {|word| word.capitalize}.join(' ')
end

str_end = capitalising_first_letter_of_each_word(str_split(str_reading))
puts "The string after capitalizing the first letter of each word is #{str_end}"
