# def show_balance( pin_code )
#   if pin_code == 1234
#     return "Balance is £200.05"
#   else
#     return "Incorrect PIN"
#   end
# end
#
# puts show_balance( 1234 )

def enter_ride( height, weight )
  if height < 120
    return "Sorry, too short"
  elsif weight < 150
    return "Sorry, too light"
  else
    return "Enter"
  end
end

puts enter_ride(134, 10)
