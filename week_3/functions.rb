# def greet(name, time_of_day)
#   return "Hello #{name.upcase()}, have a good #{time_of_day}"
# end

def add(number_one, number_two)
  return "Total of #{number_one} and #{number_two} is " + (number_one + number_two).to_s()
end

puts add(2, 3)

def population_density(population, area)
  density = population / area
  return "Population density of Mauritius is: \n\rpopulation \t#{population} / \n\rarea \t\t#{area} \n\r= \t\t#{density}"
end

puts population_of_mauritius = population_density(537300, 77933)

# another_name = "Harvey"

# puts greet("Rick","morning")

# puts greet("Mark")

# def greet_two()
#   my_name = "Mark"
#   return my_name
# end

# puts greet_two()
