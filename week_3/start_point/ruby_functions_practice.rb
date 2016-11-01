def add(number_one, number_two)
  return number_one + number_two
end

def subtract(number_one, number_two)
  return number_one - number_two
end

def multiply(number_one, number_two)
  return number_one * number_two
end

def divide(number_one, number_two)
  return number_one / number_two
end

def length_of_string(string_in)
  return string_in.length()
end

def join_string(string_one, string_two)
  total_string = string_one + string_two
  return total_string
end

def add_string_as_number(string_one, string_two)
  int_one = string_one.to_i()
  int_two = string_two.to_i()
  return (int_one + int_two)
end
