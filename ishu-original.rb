def hi(name)
  "Hello #{name}"
end
puts hi("Vijay, Anussha, and Rakshita")

for char_position in 1..line_no do
  result += (char_position == 1 or char_position == line_no) ? "1" : "0"
end
# ------------------------------------------------------------------------------------------
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
print "Please enter your name: "
name = gets.chomp
while name != ''
  puts "Hello [#{name}]"
  print "Please enter your name: "
  name = gets.strip
end

array = [1, 2, 3]
puts array
# ------------------------------------------------------------------------------------------
print "Enter a string: "
str = gets.strip
puts "The string is: #{str}"
puts str =~ /[a-z]/i ? "The string matches" : "The string does not match"
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
print "Enter a string: "
str = gets.chomp.downcase
puts "The string is '#{str}'"
puts (str.reverse == str) ? "#{str} is a palindrome" : "#{str} is not a palindrome"
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
# a = [1, 2, 3]
# b = [1, 2, 4]
# puts a - b
# puts b - a
# puts a - (a - b)

def factorial(n)
  tot = 1
  (1..n).each do |n|
    tot *= n
  end
  return tot
end

print "Enter a string or a number: "
strnum = gets.strip
strnumint = strnum.to_i
puts (strnum == strnumint.to_s) ? factorial(strnumint) : "Error - cannot compute factorial of '#{strnum}' : '#{strnum}' is not a number - it is a string"
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
# for getting a string from the user/programmer

def str_read()
  print "Enter any string: "
  return gets.strip
end

# for splitting the string/sentence

def str_split(str)
  return str.split(' ')
end

# for collecting the split & reversed words into a complete sentence

def split_rev_words_collect_into_sentences(as_sentence)
  return as_sentence.collect {|element| element.reverse}.join(' ')
end

str_rev = split_rev_words_collect_into_sentences(str_split(str_read))
puts "Reversed words in the given string: #{str_rev}"
# ------------------------------------------------------------------------------------------
# for getting a string from the user

def str_reading()
  print 'Enter a string: '
  return gets.strip
end

# for splitting the string into separate words

def str_split(str)
  return str.split(' ')
end

# for capitalising the 1st letter of each word

def capitalising_first_letter_of_each_word(into_a_sentence)
  return into_a_sentence.collect {|word| word.capitalize}.join(' ')
end

str_end = capitalising_first_letter_of_each_word(str_split(str_reading))
puts "The string after capitalising the first letter of each word is #{str_end}"
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
