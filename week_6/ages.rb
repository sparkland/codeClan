ages = [12, 35, 82, 12, 15, 29, 52, 72]
# Task

puts "Task 1:\n\r"

for age in ages
  puts age
end

# Task

puts "\n\rTask 2:\n\r"

ages_over_30 = []

for age in ages
  if age > 30
    ages_over_30.push(age)
  end
end

for age in ages_over_30
  puts age
end

# Task 3

puts "\n\rTask 3:\n\r"

sum = 0

for age in ages
  sum += age
end

puts sum

# Task 4

puts "\n\rTask 4:\n\r"

count = 0

for age in ages
  count = count+1
end

total = sum / count

puts (sum / count)

# Class answer = sum / ages.length.to_f -- changes to floating point
