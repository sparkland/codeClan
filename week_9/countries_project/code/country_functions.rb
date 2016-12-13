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

def get_translation_of_country_title_from_natural_language(message_in, countries_data)
  tranlation = false
  name_of_country = ""
  position_of_country = ""
  translation_out = ""
  countries_titles = ["German", "Japanese", "Spanish", "French", "Italian"]
  hash_countries = Hash[countries_titles.map.with_index.to_a]
  countries_tags = ["de", "ja", "es", "fr", "it"]
  split_words = message_in.split(" ")

  for translation_request in split_words
    if (translation_request.contains("translate"))
      translation = true
    end
  end

  if (translation == true)

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
  end
end
