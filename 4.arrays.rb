#!/usr/bin/env ruby

array = [1, 2, 3]
puts array

print "Enter a string: "
str = gets.strip
# ------------------------------------------------------------------------------------------
puts "The string is: #{str}"
puts str =~ /[a-z]/i ? "The string matches." : "The string does not match."
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
puts (strnum == strnumint.to_s) ? factorial(strnumint) : "Error - cannot compute factorial of '#{strnum}' :- '#{strnum}' is not a number - it is a string"
