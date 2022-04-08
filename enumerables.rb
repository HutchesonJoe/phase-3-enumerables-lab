require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)
 food_names = spicy_foods.map {|food| food[:name]}
end


def spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.select {|food| food[:heat_level] > 5}
end


def print_spicy_foods(spicy_foods)
  spicy_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find {|food| food[:cuisine] == cuisine}
end


def sort_by_heat(spicy_foods)
sorted_foods = spicy_foods.sort_by do |food|
   food[:heat_level]
  end
end 


def print_spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.select {|food| food[:heat_level] > 5}.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  food_heat = spicy_foods.map do |food| 
    food[:heat_level]
  end
  
  food_heat.sum/spicy_foods.length
end
