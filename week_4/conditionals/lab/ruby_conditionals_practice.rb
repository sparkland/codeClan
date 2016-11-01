def water_description(temperature)
  if ( temperature < 0 )
    return "ice"
  elsif ( temperature > 0 && temperature <= 100 )
    return "water"
  else
    return "steam"
  end
end

def amount_and_account_type(amount_in, account_type)
  if ( account_type == "normal" )
    return ( amount_in / 10 )
  elsif ( account_type == "offshore")
    return 0
  end
end

def character_type_and_roll_value(character, dice_roll)
  if ( character == "human" )
    dice_roll = dice_roll
  elsif ( character == "elf" )
    dice_roll = ( dice_roll * 2 )
  elsif ( character == "dwarf" )
    dice_roll = ( dice_roll / 2 )
  end
  return dice_roll
end

def should_eat(food, time_of_year)
  if (food == "ice cream" && time_of_year == "winter")
    false
  elsif (food == "hot chocolate" && time_of_year == "summer")
    false
  else
    true
  end
end
