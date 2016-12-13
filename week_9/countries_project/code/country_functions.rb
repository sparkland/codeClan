def country_names(countries_data)
  names = []
  for country in countries_data
    names << country["name"]
  end
  return names
end

def get_capital_city_from_country(country_in, countries_data)
  capital = ""
  for country in countries_data
    if (country["name"] == country_in)
      capital = country["capital"]
    end
  end
  return capital
end

def get_what_the_user_wants_to_do_from_keyword(message_in, countries_data)
  split_words = message_in.split(" ")
  count_for_how = 0
  count_for_many = 0
  count_for_people = 0
  count_for_number = 0

  for do_what in split_words
    do_what_lower = do_what.downcase
    if (do_what_lower.include? "translat")
      return "translation"
    elsif (do_what_lower == "quit") || (do_what_lower == "exit")
      return "quit"
    elsif (do_what_lower == "how")
      count_for_how = 1
    elsif (do_what_lower == "many")
      count_for_many = 1
    elsif (do_what_lower == "people")
      count_for_people = 1
    elsif (do_what_lower == "number")
      count_for_number
    end
  end

  for do_what in split_words
    do_what_lower = do_what.downcase
    if (count_for_how = 1 && count_for_many = 1 && count_for_people = 1) || (count_number = 1 && count_for_people = 1) || (do_what_lower.include? "populat")
      return "population"
    end
  end
end

def get_population_of_country_title_from_natural_language(message_in, countries_data)
  split_words = message_in.split(" ")
  name_of_country = ""
  population_of_country = ""

  for country_name in split_words
    for country in countries_data
      if (country["name"] == country_name.capitalize)
        name_of_country = country["name"]
      end
    end
  end

  for country in countries_data
    if (country["name"] == name_of_country)
      population_of_country = country["population"]
    end
  end

  return population_of_country.to_s

end

def get_translation_of_country_title_from_natural_language(message_in, countries_data)
  # translation = false
  name_of_country = ""
  position_of_country = ""
  translation_out = ""
  countries_titles = ["German", "Japanese", "Spanish", "French", "Italian"]
  hash_countries = Hash[countries_titles.map.with_index.to_a]
  countries_tags = ["de", "ja", "es", "fr", "it"]
  split_words = message_in.split(" ")

  # for translation_request in split_words
  #   translation_request_lower = translation_request.downcase
  #   if (translation_request_lower.include? "translat")
  #     translation = true
  #   end
  # end
  #
  # if (translation == true)

    for country_name in split_words
      for country in countries_data
        if (country["name"] == country_name.capitalize)
          name_of_country = country["name"]
        end
      end
    end

    for language_requested in split_words
      for country_title in countries_titles
        if (country_title == language_requested.capitalize)
          position_of_country = hash_countries[language_requested]
        end
      end
    end

    selected_translation = countries_tags[position_of_country.to_i]
    for country in countries_data
      if (country["name"] == name_of_country)
        translation_out = country["translations"]["#{selected_translation}"]
      end
    end

    return translation_out
  # end
end
