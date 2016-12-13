require_relative('../country_functions')
require_relative('../countries_data')
require('minitest/autorun')

class CountriesTest < MiniTest::Test

  def setup
    @countries = COUNTRIES
  end

  def test_gives_an_array_of_all_country_names
    names = country_names(@countries)
    assert_equal(247, names.length)
  end

  def test_that_the_Afghanistan_capital_returns_Kabul
    capital = get_capital_city_from_country("Afghanistan", @countries)
    assert_equal("Kabul", capital)
  end

  def test_that_the_United_Kingdom_capital_returns_London
    capital = get_capital_city_from_country("United Kingdom", @countries)
    assert_equal("London", capital)
  end

  def test_that_the_translation_to_German_for_Afghanistan_returns_Afghanistan
    translation = get_translation_of_country_title_from_natural_language("Translate Afghanistan to German for me", @countries)
    assert_equal("Afghanistan", translation)
  end

  def test_that_the_translation_to_Japanese_for_Afghanistan_returns_JA_Translation_of_Afghanistan
    translation = get_translation_of_country_title_from_natural_language("I want to translate Afghanistan in Japanese", @countries)
    assert_equal("アフガニスタン", translation)
  end

  def test_that_the_translation_to_German_for_Germany_returns_Deutschland
    translation = get_translation_of_country_title_from_natural_language("Give me the translation of germany in german", @countries)
    assert_equal("Deutschland", translation)
  end

end
