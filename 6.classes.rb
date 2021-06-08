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
