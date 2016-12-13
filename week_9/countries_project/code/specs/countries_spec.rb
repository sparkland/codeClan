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

  # Test do whats

  def test_what_the_user_wants_to_do_from_language_used_Translation
    dowhat = get_what_the_user_wants_to_do_from_keyword("Translate Afghanistan to German for me", @countries)
    assert_equal("translation", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_translation
    dowhat = get_what_the_user_wants_to_do_from_keyword("I want the translation of Afghanistan to German", @countries)
    assert_equal("translation", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_quit
    dowhat = get_what_the_user_wants_to_do_from_keyword("Quit this", @countries)
    assert_equal("quit", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_exit
    dowhat = get_what_the_user_wants_to_do_from_keyword("exit", @countries)
    assert_equal("quit", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_Population
    dowhat = get_what_the_user_wants_to_do_from_keyword("Population of Germany", @countries)
    assert_equal("population", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_Population
    dowhat = get_what_the_user_wants_to_do_from_keyword("I want the population of France", @countries)
    assert_equal("population", dowhat)
  end

  def test_what_the_user_wants_to_do_from_language_used_how_many_people
    dowhat = get_what_the_user_wants_to_do_from_keyword("I want to know how many people live in France?", @countries)
    assert_equal("population", dowhat)
  end

  # Test population function

  def test_that_the_population_of_Germany_returns_81083600
    population = get_population_of_country_title_from_natural_language("Give me the population of Germany", @countries)
    assert_equal("81083600", population)
  end

  def test_that_how_many_people_in_Germany_returns_81083600
    population = get_population_of_country_title_from_natural_language("How many people live in Germany?", @countries)
    assert_equal("81083600", population)
  end

  def test_that_the_number_of_people_of_Germany_returns_81083600
    population = get_population_of_country_title_from_natural_language("I want the number of people in Germany?", @countries)
    assert_equal("81083600", population)
  end

  # Test translation function

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
