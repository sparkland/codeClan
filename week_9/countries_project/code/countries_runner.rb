require_relative("countries_data")
require_relative("country_functions")

puts "Welcome to the countries application"
while true
  puts "What would you like to do?"

  puts "Options:"
  puts "  q: exit"
  puts "  1: see list of countries"
  puts "  2: what's the capital city of ...?"
  puts "  3: translate"

  choice = gets.chomp
  case choice
  when "q"
    puts "See you later"
    break
  when "1"
    puts "Country Names:"
    puts country_names(COUNTRIES)
  when "2"
    puts "Which country?"
    country = gets.chomp()
    capital = (get_capital_city_from_country(country, COUNTRIES))
    if capital != ""
      puts "The capital of #{country} is #{capital}\n\r"
    else
      puts "Can't find the country of #{country}!\n\r"
    end
  when "3"
    puts "Ask me what you want to translate..."
    translation = gets.chomp()
    returned_translation = (get_translation_of_country_title_from_natural_language(translation, COUNTRIES))
    if returned_translation != ""
      puts "\n\rCountry translates as #{returned_translation}\n\r"
    else
      puts "\n\rCan't find that country or translation\n\r"
    end
  end
  puts "\n\n"

end
