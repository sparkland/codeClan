require_relative("countries_data")
require_relative("country_functions")

puts "Welcome to the countries application"
while true
  puts "What would you like to do?\n"

  # puts "Options:"
  # puts "  q: exit"
  # puts "  1: see list of countries"
  # puts "  2: what's the capital city of ...?"
  # puts "  3: translate"

  # choice = gets.chomp
  # case choice
  # when "q"
  #   puts "See you later"
  #   break
  # when "1"
  #   puts "Country Names:"
  #   puts country_names(COUNTRIES)
  # when "2"
  #   puts "Which country?"
  #   country = gets.chomp()
  #   capital = (get_capital_city_from_country(country, COUNTRIES))
  #   if capital != ""
  #     puts "The capital of #{country} is #{capital}\n\r"
  #   else
  #     puts "Can't find the country of #{country}!\n\r"
  #   end
  # when "3"
    # puts "Ask me what you want to translate..."
    do_what_for_user = gets.chomp()
    returned_function = get_what_the_user_wants_to_do_from_keyword(do_what_for_user, COUNTRIES)
    if returned_function == "translation"
      returned_translation = (get_translation_of_country_title_from_natural_language(do_what_for_user, COUNTRIES))
      if returned_translation != ""
        puts "\n\rCountry translates as #{returned_translation}\n\r"
      else
        puts "\n\rCan't find that country or translation\n\r"
      end
    elsif returned_function == "population"
      returned_population = (get_population_of_country_title_from_natural_language(do_what_for_user, COUNTRIES))
      if returned_population != ""
        puts "\n\rThe population is #{returned_population}\n\r"
      else
        puts "\n\rCan't find that country population\n\r"
      end      
    elsif returned_function == "quit"
      puts "\n\rQuiting....\n\r"
      break
    else
      puts "\n\rI couldn't find anything to do with that question. Please ask another.\n\r"
    end
  print "\n"

end
