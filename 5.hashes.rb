#!/usr/bin/env ruby

name_numbers = {
  "A": '9876543210',
  "B": '8765432109',
  "C": '7654321098',
  "D": '6543210987',
  "E": '5432109876'
}

puts "Whose number do you want? The choices are from A-E: "
choice = gets.strip.upcase

if (name_numbers.has_key?(choice.to_sym))
  puts "The requested phone number for #{choice} is: #{name_numbers[choice.to_sym]}."
else
  puts "You have entered an invalid key."
end
# ------------------------------------------------------------------------------------------
# blank hash, get number of inputs/key-values from user, get key-values [specific], output the hash

def get_hash_key()
  puts "Enter the specific keys of the hash: "
  gets.strip
end

def get_hash_value()
  puts "Enter the specific values of the hash: "
  gets.strip
end

hash = {}

puts "Enter the number of key-values you want stored in the hash: "
number = gets.strip.to_i

(1..number).each do |index|
  hash[get_hash_key] = get_hash_value
end

puts "The contents of the hash 'hash': #{hash.inspect}"

# hash.each do |key, value|
#   puts "#{key} => #{value}"
# end
