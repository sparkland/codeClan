animals = [
  { "name" => "Polar Bear", "weight" => 500, "carnivore" => true, "habitat" => "land" },
  { "name" => "Elephant Seal", "weight" => 4000, "carnivore" => true, "habitat" => "sea" },
  { "name" => "Blue Whale", "weight" => 140000, "carnivore" => false, "habitat" => "sea" },
  { "name" => "Elephant", "weight" => 6000, "carnivore" => false, "habitat" => "land" },
]

# From class - Hash in an array -- Hash is a key value pair

# Task 1

puts "Task 1\n\r"

for animal in animals
  puts animal["name"]
end

# Task 2

puts "\n\rTask 2\n\r"

sea_based_animals = []

for animal in animals
  if animal["habitat"] == "sea"
    sea_based_animals.push(animal)
  end
end

# Note - This part is can just be printed -- does not require loop
for animal in sea_based_animals
  puts animal["name"]
end

# Task 3

puts "\n\rTask 3\n\r"

carnivorous_animals = []

for animal in animals
  if animal["carnivore"]
    carnivorous_animals.push(animal)
  end
end

for animal in carnivorous_animals
  puts animal["name"]
end

# Task 4

puts "\n\rTask 4\n\r"

for animal in animals
  if animal["name"] == "Polar Bear"
    puts animal["weight"]
  end
end

# Task 5

puts "\n\rTask 5\n\r"

animals_by_weight = animals.sort_by do | animal |
  animal["weight"]
end

puts animals_by_weight.last["name"]

# Class solution - two arrays with weight and name in for loop comparing heaviest weight to current animal weight - if heavier update arrays

# Task 6

puts "\n\rTask 6\n\r"

biggest_carnivore = []

for animal in animals_by_weight
  if animal["carnivore"] == true
    biggest_carnivore.push(animal)
  end
end

puts biggest_carnivore.last["name"]
