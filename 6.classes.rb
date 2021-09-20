#!/usr/bin/env ruby

# perimeter of a rectangle
class Rectangle
  # attr_accessor :length
  # attr_accessor :breadth
  attr :length
  attr :breadth
  attr :height

  def initialize(length, breadth, height = 854)
    @length = length
    @breadth = breadth
    @height = height
  end

  def perimeter
    return 2 * (length + breadth)
  end
end

rect_instance = Rectangle.new(5, 6)
puts rect_instance.perimeter()
# ------------------------------------------------------------------------------------------
# area of square
class Square
  attr :side

  def initialize(side)
    @side = side
  end

  def area
    return side * side * side * side
  end
end

puts "The area of the square is: " + "#{Square.new(2).area()}"
# ------------------------------------------------------------------------------------------
# dog 4 legs 1 tail brown 1 eye

class Dog
  attr :legs
  attr :tail
  attr :color
  attr :eye

  def initialize(legs, tail, color, eye)
    @legs = legs
    @tail = tail
    @color = color
    @eye = eye
  end

  def full_pic
    return "There is a dog, who has #{legs} legs, #{tail} tail(s), and #{eye} eye(s). It is #{color} in color."
  end
end

puts Dog.new(2, 2, "pink", 4).full_pic()
# ------------------------------------------------------------------------------------------
# set of classes - laptop, 20 keys, name, track pad, model no., body, screen size

class Laptop
  attr :name
  attr :track_pad
  attr :model_no
  attr :body
  attr :screen_size
  attr :keys

  def initialize(name, track_pad, model_no, body, screen_size, keys)
    @name = name
    @track_pad = track_pad
    @model_no = model_no
    @body = body
    @screen_size = screen_size
    @keys = keys
  end

  def to_s
    "There is a laptop of make #{name}, with #{track_pad} track pad(s). It's model number is #{model_no}, and it's body is made up of #{body}, being #{screen_size} in length. \nThe keys are: #{keys.join}"
  end
end

class Key
  attr :key

  def initialize(key)
    @key = key
  end

  def to_s
    key
  end
end

laptop = Laptop.new(
  "MacBook",
  1,
  1234,
  "Aluminium",
  "16 inches",
  [Key.new('Q'), Key.new('W'), Key.new('E'), Key.new('R'), Key.new('T')]
)

puts laptop.to_s
# ------------------------------------------------------------------------------------------
# dining table chairs set

class DiningTable
  attr :material
  attr :legs
  attr :polish
  attr :seating_cap
  attr :decorations
  attr :chairs

  def initialize(material, legs, polish, seating_cap, decorations, chairs)
    @material = material
    @legs = legs
    @polish = polish
    @seating_cap = seating_cap
    @decorations = decorations
    @chairs = chairs
  end

  def to_s
    # "I am a #{material} dining table residing in the spacious dining area of a mansion. I have #{legs} legs, and I shine with a #{polish} finish. My seating capacity is #{seating_cap}, and I'm decorated with #{decorations}. \n#{chairs}"
    "Table: \n1. Material: #{material} \n2. Legs: #{legs} \n3. Polish: #{polish} \n4. Seating capacity: #{seating_cap} \n5. Decorations: #{decorations} \n6. Chairs:\n#{chairs.join("\n")}"
  end
end

class Chair
  attr :material
  attr :legs
  attr :polish
  attr :seating_cap
  attr :decorations
  attr :number

  def initialize(material, legs, polish, decorations)
    @material = material
    @legs = legs
    @polish = polish
    @decorations = decorations
  end

  def to_s
    # "I'm made of #{material}, have #{legs} legs, and am polished with #{polish}. There are #{decorations} inscribed on my back-rest."
    " 1. Material: #{material} \n 2. Legs: #{legs} \n 3. Polish: #{polish} \n 4. Decorations: #{decorations}"
  end
end

table = DiningTable.new(
  "Mahogany",
  4,
  "Glazed",
  10,
  "Intricate swirls",
  [Chair.new("Mahogany", 4, "Glazed", "Intricate swirls"), Chair.new("Oak", 4, "Matte", "Flowers")]
)

puts table.to_s
# ------------------------------------------------------------------------------------------
class Laptop
  attr_accessor :color
  attr_accessor :cover
  attr_accessor :screens

  def initialize(color, cover, screens)
    @color = color
    @cover = cover
    @screens = screens
  end

  def to_s
    "There is a laptop of color #{color}, , it's top covered with #{cover}. \n#{screens.join("\n")}"
  end
end

class Screen
  attr_accessor :material
  attr_accessor :resolution
  attr_accessor :size

  def initialize(material, resolution, size)
    @material = material
    @resolution = resolution
    @size = size
  end

  def to_s
    "The screen is made of #{material}, and has a resolution of #{resolution}. The screen's size is #{size}."
  end
end

laptop = Laptop.new(
  "silver",
  "a Batman sticker",
  [Screen.new("glass", "1280-by-800", "13 inches"), Screen.new("glass", "1366-by-768", "16 inches")]
)

puts "Before changing"
# puts laptop.to_s

# laptop.color = "foo bar"

# puts "After changing"
# puts laptop.to_s

puts laptop.screens[0].material

puts "After changing"
laptop.screens[0].material = "new value"
puts laptop.screens[0].material
# ------------------------------------------------------------------------------------------
# in classes - trip n people (people has the distance they travel n the cost)
# ------------------------------------------------------------------------------------------
# name 2 address moving from 1 to (changed 2)


class Man
  attr_accessor :name
  attr_accessor :addresses

  def initialize(name, addresses)
  @name = name
  @addresses = addresses
  end

  def to_s
    "Name : #{name} \n#{addresses.join("\n")}"
  end
end

class Address
  attr_accessor :address_1
  attr_accessor :address_2

  def initialize(address_1, address_2)
    @address_1 = address_1
    @address_2 = address_2
  end

  def to_s
    "The man is moving from: \n 1. First Address: #{address_1} \n 2. Second Address: #{address_2}"
  end
end

man = Man.new(
  "Ivan Tsvetkov",
  [Address.new("Texas", "Seattle")]
)

puts "BEFORE CHANGE: "
puts man.to_s

man.addresses[0].address_2 = "Norfolk"

puts "AFTER CHANGE: "
puts man.to_s
# ------------------------------------------------------------------------------------------
# 4 friends are travelling in a car. It gives 10 miles to the gallon. The cost of petrol is Rs. 100 per gallon. Total distance covered is 20 miles. If the 1st person gets down at mile-marker 5, 2nd at mile-marker 10, etc... until 4th at 20.
# They all have to share the cost in a fair manner based on distance travelled. Find the amt each person has to pay.

# 1 gallon --- 10 miles --- Rs. 100
# 2 gallons --- 20 miles --- Rs. 200
# x + 2x + 3x + 4x = 200
# x = Rs. 20
# 2x = Rs. 40
# 3x = Rs. 60
# 4x = Rs. 80

# puts "Enter the number of miles which can be driven using 1 gallon of petrol: "
# miles_per_gallon = gets.strip.to_i

# puts "Enter the cost of petrol per gallon: "
# cost_per_gallon = gets.strip.to_f   # to float

# total_miles_for_group = 0
# miles_array = []

# (1..4).each do |person_no|
#   puts "The number of miles person no. #{person_no} travelled: "
#   miles = gets.strip.to_i
#   puts "Person #{person_no} travelled #{miles} miles."
#   miles_array << miles
#   total_miles_for_group += miles
# end

# tot_gallons_used = (miles_array.max) / miles_per_gallon
# tot_petrol_cost = tot_gallons_used * cost_per_gallon
# cost_per_mile = tot_petrol_cost / total_miles_for_group

# puts tot_gallons_used
# puts tot_petrol_cost
# puts miles_array

# (1..4).each do |person_no|
#   cost_per_person = cost_per_mile * miles_array[(person_no-1)]
#   puts "The amount person no. #{person_no} has to pay is Rs. #{cost_per_person} /-."
# end

class Person
  attr :name
  attr_accessor :miles
  attr :cost

  def initialize(name, miles)
    @name = name
    @miles = miles
  end

  def calculate_cost(cost_per_mile)
    @cost = cost_per_mile * miles
  end

  def to_s
    "  Name: #{name} \n  Miles travelled: #{miles} \n  Cost: #{cost} \n--------------"
  end
end

class Group
  attr :miles_per_gallon
  attr :cost_per_gallon
  attr :people

  def initialize(miles_per_gallon, cost_per_gallon, people)
    @miles_per_gallon = miles_per_gallon
    @cost_per_gallon = cost_per_gallon
    @people = people
  end

  def total_miles_for_group
    @people.map(&:miles).sum
  end

  def max_dist_travelled
    # people.map {|person| person.miles}.max
    @people.map(&:miles).max
  end

  def total_gallons_used
    max_dist_travelled / miles_per_gallon
  end

  def total_petrol_cost
    total_gallons_used * cost_per_gallon
  end

  def cost_per_mile
    total_petrol_cost / total_miles_for_group
  end

  def calculate_and_assign_cost!
    people.each { |person| person.calculate_cost(cost_per_mile) }
  end

  def to_s
    "A. Miles per Gallon: #{miles_per_gallon} \nB. Cost per Gallon: #{cost_per_gallon} \nC. Total Gallons used: #{total_gallons_used} \nD. Array of people: \n#{people.join("\n")}"
  end
end

group = Group.new(
  10,
  100,
  [
    Person.new("A", 5),
    Person.new("B", 10),
    Person.new("C", 15),
    Person.new("D", 20),
    Person.new("E", 25)
  ]
)

group.calculate_and_assign_cost!

puts "BEFORE CHANGE: #{group}"

group.people[2].miles = 20
group.calculate_and_assign_cost!

puts "AFTER CHANGE: #{group}"

group.people << Person.new("F", 20)
group.calculate_and_assign_cost!

puts "AFTER CHANGE: #{group}"
# ------------------------------------------------------------------------------------------
# TNEB has slabs for electricity usage.
# 0 units -> 50 rs.
# 1-100 -> 2 rs. per unit
# 101-400 -> 2.5 rs. per unit
# >=401 -> 3.5 rs. per unit
# Hardcode a value : tot units used - 1000
# calculate bill amt

# 50 + (2 * 100) + (2.5 * 300) + (3.5 * (units-401))
# (50 * (max_1 - (min_1 - 1))) + (2 * (max_2 - (min_2 - 1))) + (2.5 * (max_3 - (min_3 - 1))) + (3.5 * (max_4 - (min_4 - 1)))

class Slab
  attr :range_start
  attr :range_end
  attr :per_unit_cost
  attr :units_consumed
  attr :total_amount

  def initialize(range_start, range_end, per_unit_cost)
    @range_start = range_start
    @range_end = range_end
    @per_unit_cost = per_unit_cost
    @total_amount = 0
    @units_consumed = 0
  end

  def calculate_cost!(unit_for_calculation)
    if (@range_end == @range_start)
      @units_consumed = @range_end
    elsif unit_for_calculation > (@range_end - @range_start)
      @units_consumed = (@range_end - (@range_start - 1))
    else
      @units_consumed = unit_for_calculation
    end

    @total_amount = @units_consumed.zero? ? @per_unit_cost : @units_consumed * @per_unit_cost
    unit_for_calculation - @units_consumed
  end

  def to_s
    "%4d - %4d : %4d : (Rs. %6.2f) --> Rs. %10.2f" % [range_start, range_end, units_consumed, per_unit_cost, total_amount]
  end
end

class Bill
  attr :total_units_used
  attr :slabs

  def initialize(total_units_used, slabs)
    @total_units_used = total_units_used
    @total_bill = 0
    @slabs = slabs
  end

  def calculate_total_bill!
    current_outstanding = total_units_used
    slabs.each do |slab|
      current_outstanding = slab.calculate_cost!(current_outstanding) if current_outstanding > 0
    end
  end

  def to_s
    "#{slabs.join("\n")} \nTotal bill: #{slabs.sum(&:total_amount)}"
  end
end

bill = Bill.new(
  1004,
  [
    Slab.new(0, 0, 50),
    Slab.new(1, 100, 2),
    Slab.new(101, 300, 2.5),
    Slab.new(301, 600, 3),
    Slab.new(601, 1000, 3.5),
    Slab.new(1001, 1500, 4),
    Slab.new(1501, 2100, 4.5),
  ]
)

puts "Initial values: #{bill.total_units_used} units"

bill.calculate_total_bill!

puts "#{bill}"

# puts "Enter the number of units you used: "
# units = gets.strip.to_i
# first_slab = 50
# second_slab = 2
# third_slab = 2.5
# fourth_slab = 3.5

# if units == 0
#   puts "The amount you have to pay is: Rs. #{first_slab} /-"
# end

# if 0<units && units<101
#   puts "The amount you have to pay is: Rs. #{first_slab + (second_slab * units)} /-"
# end

# if 100<units && units<401
#   puts "The amount you have to pay is: Rs. #{first_slab + (second_slab * 100) + (third_slab * (300-(units-100)))} /-"
# end

# if units>=401
#   puts "The amount you have to pay is: Rs. #{first_slab + (second_slab * 100) + (third_slab * 300) + (fourth_slab * (units-401))} /-"
# end
# ------------------------------------------------------------------------------------------
# Decathlon Cycle Department
# 3 sizes: Small, Medium, Large
# 3 brands: BTwin, Hero, BSA
# 5 colors: Black, Blue, Red, Yellow, Green
# Default: Small, BTwin, Black --> Rs. 1000 /- each
# Size steps: + Rs. 500 /-
# Brand steps: + Rs. 1000 /-
# Color steps: + Rs. 250 /-
# Get user's choice of attributes and calculate and print total cost

class Cycle
  attr_accessor :size_chosen
  attr_accessor :brand_chosen
  attr_accessor :color_chosen
  attr :total_bill

  def initialize(size_chosen, brand_chosen, color_chosen)
    @size_chosen = size_chosen
    @brand_chosen = brand_chosen
    @color_chosen = color_chosen
  end

  def calculate_total_bill!
    @total_bill = size_chosen.cost + brand_chosen.cost + color_chosen.cost
  end

  def to_s
    "\nFeatures of the cycle you have chosen: \n      #{size_chosen} \n      #{brand_chosen} \n      #{color_chosen} \nTotal bill: Rs. #{total_bill} /-"
  end
end

class Size
  attr :size
  attr :cost

  def initialize(size, cost)
    @size = size
    @cost = cost
  end

  def to_s
    "%10s --> Rs. %6d /-" % [size, cost]
    # "#{size} --> #{cost}"
  end
end

small = Size.new("Small", 1000)
medium = Size.new("Medium", 1500)
large = Size.new("Large", 2000)

available_sizes = {
  small: small,
  medium: medium,
  large: large
}

class Brand
  attr :brand
  attr :cost

  def initialize(brand, cost)
    @brand = brand
    @cost = cost
  end

  def to_s
    "%10s --> Rs. %6d /-" % [brand, cost]
    # "#{brand} --> #{cost}"
  end
end

btwin = Brand.new("Btwin", 1000)
hero = Brand.new("Hero", 2000)
bsa = Brand.new("BSA", 3000)

available_brands = {
  btwin: btwin,
  hero: hero,
  bsa: bsa
}

class Color
  attr :color
  attr :cost

  def initialize(color, cost)
    @color = color
    @cost = cost
  end

  def to_s
    "%10s --> Rs. %6d /-" % [color, cost]
    # "#{color} --> #{cost}"
  end
end

black = Color.new("Black", 1000)
blue = Color.new("Blue", 1250)
red = Color.new("Red", 1500)
yellow = Color.new("Yellow", 1750)
green = Color.new("Green", 2000)

available_colors = {
  black: black,
  blue: blue,
  red: red,
  yellow: yellow,
  green: green
}

puts "Welcome to Decathlon! Thank you for choosing to buy your perfect cycle at our store. Please choose the attributes you desire: \n \n"

puts "The available characteristics are: \n1. SIZES \n   #{available_sizes.values.join("\n   ")} \n2.BRANDS \n   #{available_brands.values.join("\n   ")} \n3.COLORS \n   #{available_colors.values.join("\n   ")} \n \n"

puts "Please enter your choice of size: "
size_chosen = gets.strip.downcase
puts "Please enter your choice of brand: "
brand_chosen = gets.strip.downcase
puts "Please enter your choice of color: "
color_chosen = gets.strip.downcase

# size_final = available_sizes[size_chosen.to_sym]
# brand_final = available_brands[brand_chosen.to_sym]
# color_final = available_colors[color_chosen.to_sym]

cycle = Cycle.new(available_sizes[size_chosen.to_sym], available_brands[brand_chosen.to_sym], available_colors[color_chosen.to_sym])
cycle.calculate_total_bill!

puts cycle.to_s
# ------------------------------------------------------------------------------------------
# 5 students in 1 class - 6 subjects
# find the student who is class topper
# find the student who is subject topper

# classes : Class, Student, Subject

class Class
  attr :students
  attr_accessor :class_topper
  attr_accessor :subject_topper
  attr :students_total_marks

  def initialize(students = [])
    @students = students
    @students_total_marks = {}
  end

  def calculate_class_topper!
    students.each do |student|
      student.calculate_total_marks!
      if !students_total_marks.has_key?(student.total_marks)
        students_total_marks[student.total_marks] = [student]
      else
        students_total_marks[student.total_marks] << student
      end
    end
    @class_topper = students_total_marks[students_total_marks.keys.max]
  end

  def to_s
    "Class topper: #{@class_topper&.join(', ')} with marks: #{@class_topper&.first&.total_marks}"
  end
end

class Student
  attr :name
  attr_accessor :subjects
  attr_accessor :total_marks

  def initialize(name, subjects = [])
    @name = name
    @subjects = subjects
  end

  def calculate_total_marks!
    @total_marks = @subjects.map(&:mark).sum
  end

  def to_s
    name
  end
end

class Subject
  attr :subject
  attr_accessor :mark

  def initialize(subject, mark = nil)
    @subject = subject
    if mark.nil?
      print "Please enter marks for #{@subject}: "
      @mark = gets.chomp.to_f
    else
      @mark = mark.to_f
      puts "Using pre-specified mark for #{@subject}: #{@mark}"
    end
  end

  def to_s
    "#{subject} --> #{mark} / 100"
  end
end

student_1 = Student.new("Ajay")
puts student_1
student_1.subjects << Subject.new("Science")
student_1.subjects << Subject.new("Social studies", 98)
student_1.subjects << Subject.new("English", 96)
student_1.subjects << Subject.new("Math", 94)
student_1.subjects << Subject.new("Computer science", 92)
student_1.subjects << Subject.new("2nd language", 90)

puts
student_2 = Student.new("Vijay")
puts student_2
student_2.subjects << Subject.new("Science", 99)
student_2.subjects << Subject.new("Social studies", 97)
student_2.subjects << Subject.new("English", 95)
student_2.subjects << Subject.new("Math", 93)
student_2.subjects << Subject.new("Computer science", 91)
student_2.subjects << Subject.new("2nd language", 89)

puts
student_3 = Student.new("Shri")
puts student_3
student_3.subjects << Subject.new("Science", 98)
student_3.subjects << Subject.new("Social studies", 96)
student_3.subjects << Subject.new("English", 94)
student_3.subjects << Subject.new("Math", 92)
student_3.subjects << Subject.new("Computer science", 90)
student_3.subjects << Subject.new("2nd language", 88)

puts
student_4 = Student.new("Guru")
puts student_4
student_4.subjects << Subject.new("Social studies", 95)
student_4.subjects << Subject.new("English", 93)
student_4.subjects << Subject.new("Math", 91)
student_4.subjects << Subject.new("Computer science", 89)
student_4.subjects << Subject.new("2nd language", 87)

puts
student_5 = Student.new("Leylani")
puts student_5
student_5.subjects << Subject.new("Science", 96)
student_5.subjects << Subject.new("Social studies", 94)
student_5.subjects << Subject.new("English", 92)
student_5.subjects << Subject.new("Math", 90)
student_5.subjects << Subject.new("Computer science", 88)
student_5.subjects << Subject.new("2nd language", 86)

puts
klass = Class.new([student_1, student_2, student_3, student_4, student_5])
klass.calculate_class_topper!
puts klass
# ------------------------------------------------------------------------------------------
class Class
  attr :students
  attr_accessor :class_topper
  attr_accessor :subject_topper
  attr :tot_marks_students

  def initialize(students = [], tot_marks_students = {})
    @students = students
    @tot_marks_students = tot_marks_students
  end

  def calculate_class_topper!
    students.each do |student|
      student.calculate_tot_marks!
      if !tot_marks_students.has_key?(student.tot_marks)
        tot_marks_students[student.tot_marks] = [student]
      else
        tot_marks_students[student.tot_marks] << student
      end
    end
    @class_topper = tot_marks_students[tot_marks_students.keys.max]
  end

  def to_s
    "Class topper: #{@class_topper.join(", ")} \nMarks: #{@class_topper.first.tot_marks}"
  end
end

class Student
  attr :name
  attr_accessor :subjects
  attr_accessor :tot_marks

  def initialize(name, subjects = [])
    @name = name
    @subjects = subjects
  end

  def calculate_tot_marks!
    @tot_marks = @subjects.map(&:mark).sum
  end

  def to_s
    name
  end
end

class Subject
  attr :subject
  attr_accessor :mark

  def initialize(subject, mark = nil)
    @subject = subject
    if (mark == nil)
      puts "Enter marks for #{@subject}: "
      @mark = gets.strip.to_f
    else
      @mark = mark.to_f
      puts "Default value for #{@subject}: #{@mark}"
    end
  end

  def to_s
    "#{@subject} --> #{@mark} / 100"
  end
end

# puts, student_

student_1 = Student.new("A")
puts "Student 1: "
puts student_1
student_1.subjects << Subject.new("Science", 100)
student_1.subjects << Subject.new("SST", 99)

student_2 = Student.new("B")
puts "Student 2: "
puts student_2
student_2.subjects << Subject.new("Science", 99)
student_2.subjects << Subject.new("SST", 98)

students = [student_1, student_2]

class_name = Class.new(students)
class_name.calculate_class_topper!
puts class_name
