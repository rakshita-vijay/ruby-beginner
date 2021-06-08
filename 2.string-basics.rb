#!/usr/bin/env ruby

# ------------------------------------------------------------------------------------------
# string interpolation
print "Enter a string: "
str = gets.chomp.downcase

puts "The string is '#{str}'"
puts (str.reverse == str) ? "#{str} is a palindrome" : "#{str} is not a palindrome"
# ------------------------------------------------------------------------------------------
# same no - vol of cube
# diff nos - area of a rectangle

def vol_of_cube(length)
  vol = length * length * length
  "Volume of cube: #{vol}"
end

def area_of_rect(length, breadth)
  area = length * breadth
  "Area of rectangle: #{area}"
end

print "Enter the 1st value: "
fst_value = gets.to_f
print "Enter the 2nd value: "
scnd_value = gets.to_f

puts "The 1st value is: #{fst_value}"
puts "The 2nd value is: #{scnd_value}"
puts (fst_value == scnd_value) ? vol_of_cube(fst_value) : area_of_rect(fst_value, scnd_value)

# ------------------------------------------------------------------------------------------

def vol_cube(side)
  vol = side * side * side
  "#{vol}"
end

def area_rectangle(length, breadth)
  area = length * breadth
  "#{area}"
end

puts "Enter first number: "
first_num = gets.to_f
puts "Enter first number: "
second_num = gets.to_f

puts (first_num == second_num) ? ("The volume of the cube is " + vol_cube(first_num)) : ("The area of the rectangle is " + area_rectangle(first_num, second_num))
# ------------------------------------------------------------------------------------------
# string input
# length of str
# cube of str length

def read_string()
  print "Enter a string: "
  return gets.strip
end

def calculate_cube(str_length)
  return str_length * str_length * str_length
end

puts "The cube of the string is: #{calculate_cube(read_string.length)}"
# ------------------------------------------------------------------------------------------
def read_string()
  print 'Enter a string: '
  return gets.strip
end

def split_sentence(str)
  return str.split(' ')
end

def collect_words_into_sentence(str_array)
  return str_array.collect { |word| word.reverse }.join(' ')
end

strrev = collect_words_into_sentence(split_sentence(read_string))
puts "The reversed string is #{strrev.inspect}"
# ------------------------------------------------------------------------------------------
# l b h and then vol sa of cube depending on user's choice

def prompt_and_get_value(prompt_string)
  puts "Enter the value for #{prompt_string}: "
  gets.strip.to_i
end

def vol_of_cuboid(length, breadth, height)
  vol = length * breadth * height
  "Volume of cuboid: #{vol}"
end

def sa_of_cuboid(length, breadth, height)
  sa = 2 * ((length * breadth) + (breadth * height) + (height * length))
  "Surface Area of cuboid: #{sa}"
end

length = prompt_and_get_value("length")
breadth = prompt_and_get_value("breadth")
height = prompt_and_get_value("height")

puts "Enter your choice - 'Volume' or 'Surface Area' of cuboid: "
choice = gets.strip.downcase

puts "The length is '#{length}', the breadth is '#{breadth}', and the height is '#{height}'."

if choice != ''
  puts (choice == "volume") ? "#{vol_of_cuboid(length, breadth, height)}" : "#{sa_of_cuboid(length, breadth, height)}"
else
  puts "You have entered a blank."
end
