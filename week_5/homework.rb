# Section 1
# Task 1

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

puts lines.count

# Task 2

puts lines[1]

# Task 3

puts lines[-1]
puts lines[4]
puts lines.last

# Task 4

puts lines.find_index("Haymarket")

# Task 5

lines.push("Airport")

# Task 6

lines.push("York Place")

# Task 7

lines.delete("Edinburgh Park")

# Task 8

lines.pop(1)

# Task 9

puts lines.reverse

# Section 2
# Task 1

my_hero = {"name" => "Legolas", "race" => "elf", "weapons" => ["bow", "knife"]}

puts my_hero["name"]

# Task 2

puts my_hero["race"]

# Task 3

puts my_hero["weapons"][0]

# Task 4

puts my_hero["weapons"][1]

# Task 5

puts my_hero["weapons"].count

# Section 3
# Task 1

users = {
  "Jonathan" => {
    "twitter" => "jonnyt",
    "favourite_numbers" => [12, 42, 75, 12, 5],
    "home_town" => "Stirling",
    "pets" => {
      "fluffy" => "cat",
      "fido" => "dog",
      "spike" => "dog"
    }
  },
  "Erik" => {
    "twitter" => "eriksf",
    "favourite_numbers" => [8, 12, 24],
    "home_town" => "Linithgow",
    "pets" => {
      "nemo" => "fish",
      "kevin" => "fish",
      "spike" => "dog",
      "rupert" => "parrot"
    }
  },
  "Avril" => {
    "twitter" => "bridgpally",
    "favourite_numbers" => [12, 14, 85, 88],
    "home_town" => "Dunbar",
    "pets" => {
      "colin" => "snake"
    }
  },
}

puts users["Jonathan"]["twitter"]

# Task 2

puts users["Erik"]["home_town"]

# Task 3

puts users["Erik"]["favourite_numbers"]

# Task 4

puts users["Avril"]["pets"]["colin"]

# Task 5

puts users["Erik"]["favourite_numbers"][0]

# Task 6

users["Erik"]["favourite_numbers"].push(7)
puts users["Erik"]["favourite_numbers"]

# Task 7

users["Erik"]["home_town"] = "Edinburgh"
puts users["Erik"]["home_town"]

# Task 8

users["Erik"]["pets"]["Fluffy"] = ["dog"]
puts users["Erik"]["pets"]["Fluffy"]

# Task 9

new_user =  {
     "twitter" => "mrober27",
     "favorite_numbers" => [1, 2, 10],
     "home_town" => "Cumbernauld",
     "pets" => {
       "doug" => "pug"
     }
   }

users["Mark"] = new_user
puts users["Mark"]
