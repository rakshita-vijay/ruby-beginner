#!/usr/bin/env ruby

# 1
# 11
# 101
# 1001
# 10001

(1..10).each do |line_no|
  result = ""
  (1..line_no).each do |char_position|
    result += (char_position == 1 or char_position == line_no) ? "1" : "0"
  end
  puts result
end
# ------------------------------------------------------------------------------------------
# 1
# 10
# 101
# 1010
# 10101

(1..10).each do |line_no|
  result = ""
  (1..line_no).each do |char_position|
    result += (char_position % 2 == 0) ? "0" : "1"
  end
  puts result
end

(1..10).each do |line_no|
  result = ""
  (1..line_no).each do |char_pos|
    n = char_pos
    result += (char_pos == 1 or (char_pos == n and (n-1) % 2 == 0)) ? "1" : "0"
  end
  puts result
end
# ------------------------------------------------------------------------------------------
# 1
# 2 3 4
# 5 6 7 8 9
# 10 11 12 13 14 15 16
# 17 18 19 20 21 22 23 24 25

num_to_pr = 1
(1..6).each do |line_no|
  result = ""
  (1..((2*line_no)-1)).each do
    result += "#{num_to_pr} "
    num_to_pr += 1
  end
  puts result.strip
end
# ------------------------------------------------------------------------------------------
# 1
# 12
# 123
# 1234
# 12345

(1..5).each do |line_no|
  result = ""
  (1..line_no).each do |char_pos|
    result += "#{char_pos}"
  end
  puts result
end
# ------------------------------------------------------------------------------------------
#     0
#    000
#   00000
#  0000000
# 000000000

(1..5).each do |line_no|
  result = " " * (5 - line_no)
  result += "0" * (2 * line_no - 1)
  puts result
end
# ------------------------------------------------------------------------------------------
# 1
# 2 3 4
# 5 6 7 8 9
# 10 11 12 13 14 15 16
# 17 18 19 20 21 22 23 24 25

num_to_print = 1
(1..6).each do |line_no|
  result = (1..((2 * line_no) - 1 )).inject {|collector = "", _| num_to_print += 1; "#{collector} #{num_to_print}" }
  puts result
end
# ------------------------------------------------------------------------------------------
# 0 1 1 2 3 5 8 13 21 34 . . .

first_value = 0
second_value = 1
next_value = 0

puts "Enter the number of values: "
num_of_values = gets.strip.to_i

total = ""
(1..num_of_values).each do ||
  total += "#{first_value} "
	next_value = first_value + second_value
	first_value = second_value
	second_value = next_value
end
puts "The first #{num_of_values} values of Fibonacci series are: #{total}"
# ------------------------------------------------------------------------------------------
# ~                   ~
#   ~               ~
#     ~           ~
#       ~       ~
#         ~   ~
#           ~
#         ~   ~
#       ~       ~
#     ~           ~
#   ~               ~
# ~                   ~

puts "Enter the number of lines you want to print - make sure it is odd, else 1 will be added to it: "
line_no = gets.strip.to_i

left_spaces = 0
right_spaces = line_no - 1
char_to_print = "x"

(1..((line_no-1)/2).floor).each do |line|
  puts (' ' * left_spaces) + char_to_print + (' ' * (right_spaces-1)) + char_to_print
  left_spaces += 1
  right_spaces -= 2
end

puts "#{' ' * left_spaces}#{char_to_print}#{line_no.even? ? char_to_print : ''}"

(1..((line_no-1)/2).floor).each do |line|
  puts (' ' * (left_spaces-1)) + char_to_print + (' ' * (right_spaces+1)) + char_to_print
  left_spaces -= 1
  right_spaces += 2
end
# ------------------------------------------------------------------------------------------
#           ~
#         ~   ~
#       ~       ~
#     ~~~~~~~~~~~~~
#   ~               ~
# ~                   ~

puts "Enter the number of lines you want to print - make sure it is even, else 1 will be added to it: "
line_no = gets.strip.to_i

space_left = 2 * line_no
char = "~"
space_right = 2

puts (" " * (space_left+1)) + char

mid_point = ((line_no - 1)/2).floor

(1..mid_point).each do |line|
  space_left -= 2
  puts (" " * space_left) + char + (" " * space_right) + char
  space_right += 4
end

space_left -= 2
puts (" " * space_left) + (char * ((2 * line_no)+2))

space_right = (2 * line_no) + 2

mid_point = ((line_no)/2).floor

(1..mid_point).each do |line|
  space_left -= 2
  if space_left < 0
    space_left = 0
  end
  puts (" " * space_left) + char + (" " * (space_right+3)) + char
  space_right += 4
end
