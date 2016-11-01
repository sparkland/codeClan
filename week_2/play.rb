my_string = "Some text here"
another_string = "Another string"
puts my_string + " " + another_string * 3
puts "fifth letter of my_string is " + my_string[5]
puts my_string.empty?
third_string = my_string.insert(4, "  more space  ")
puts third_string
puts third_string.prepend("Test ")
