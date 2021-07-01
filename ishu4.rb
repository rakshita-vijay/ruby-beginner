#!/usr/bin/env ruby

# a building
# 4 floors
# each has 2 apartments - 3000 sq ft and 2000 sq ft
# when there is maintenance, cost is taken from user
# 3000x + 2000x = cost taken from user / 4
# this stands true only if repair item is not 'lift'
# if it is 'lift', then the cost is divided by top three floors only
# 3000x + 2000x = cost taken from user / 3
# ask user for cost, maintenace item, generate bill

class Apartment
  attr :sq_ft
  attr :cost

  def initialize(sq_ft)
    @sq_ft = sq_ft
  end

  def calculate_per_sq_ft_cost!(cost_per_sqft)
    @cost = @sq_ft * cost_per_sqft
  end

  def to_s
    "Apartment of #{@sq_ft} sqft: Rs. #{@cost}"
  end
end

class Floor
  attr :apartments

  def initialize(apartments)
    @apartments = apartments
  end

  def calculate_per_sq_ft_cost!(cost_per_floor)
    total_sqft = @apartments.sum(&:sq_ft)
    @apartments.each do |apt|
      apt.calculate_per_sq_ft_cost!(cost_per_floor/total_sqft)
    end
  end

  def to_s
    @apartments.join("\n")
  end
end

class Building
  attr_accessor :floors

  def initialize(floors)
    @floors = floors
  end

  def calculate_per_sq_ft_cost!(repair_item, cost_of_repair)
    is_lift = repair_item =~ /lift/i
    number_of_applicable_floors = !is_lift ? 4 : 3

    @floors.each_with_index do |floor, index|
      if (is_lift)
        if (index != 0)
          floor.calculate_per_sq_ft_cost!(cost_of_repair/number_of_applicable_floors)
        else
          floor.calculate_per_sq_ft_cost!(0)
        end
      else
        floor.calculate_per_sq_ft_cost!(cost_of_repair/number_of_applicable_floors)
      end
    end
  end

  def to_s
    "\nFloors in the building: \n \n#{@floors.join("\n \n")} \n"
  end
end

class Bill # Pascal Case
  attr :building

  def initialize(building)
    @building = building
  end

  def calculate_per_sq_ft_cost!(repair_item, cost_of_repair)
    building.calculate_per_sq_ft_cost!(repair_item, cost_of_repair)
  end

  def to_s
    building.to_s
  end
end

floor_1 = Floor.new([Apartment.new(3000), Apartment.new(2000)])
floor_2 = Floor.new([Apartment.new(3000), Apartment.new(2000)])
floor_3 = Floor.new([Apartment.new(3000), Apartment.new(2000)])
floor_4 = Floor.new([Apartment.new(3000), Apartment.new(2000)])

building = Building.new([floor_1, floor_2, floor_3, floor_4])

puts "Please enter the item to be repaired: "
repair_item = gets.strip.downcase
puts "\nPlease enter the total cost of repair: "
cost_of_repair = gets.strip.to_f

bill = Bill.new(building)
bill.calculate_per_sq_ft_cost!(repair_item, cost_of_repair)
puts bill.to_s
