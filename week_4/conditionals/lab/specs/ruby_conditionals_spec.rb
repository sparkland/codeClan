require( 'minitest/autorun' )
require_relative( '../ruby_conditionals_practice' )
class ConditionalsPracticeTest < MiniTest::Test
  # Water Description
  # Write a function; water_description which takes in a temperature (Fixnum) as an argument
  # The function should return a string "ice" if the temperature is below 0
  def test_is_ice_when_below_0
    assert_equal( "ice", water_description(-1) )
  end
  # The function should return a string "water" if the temperature is above 0
  def test_is_water_when_above_0
    assert_equal( "water", water_description(1) )
  end
  # The function should return a string "steam" if the temperature is above 100
  def test_is_steam_when_above_100
    assert_equal( "steam", water_description(101) )
  end
  # Tax Calculator
  # Write a function that returns the tax due for a bank account. The function should take in the
  # the amount of the bank account(Float) and the account_type(String)
  # The function should return 10 percent of the value of a "normal" bank account
  def test_returns_10_percent_for_normal_bank_account
    assert_equal( 12.301, amount_and_account_type(123.01, "normal") )
  end
  def test_returns_0_for_a_offshore_bank_account
    assert_equal( 0, amount_and_account_type(420.40, "offshore") )
  end
  # Hero Movement
  # Write a function that returns the movement of a hero.
  # The function takes in the the race of the hero: "human", "elf", "dwarf"  as a String
  # And a dice roll - FixNum
  # The function should return the dice roll value if the hero is human
  def test_returns_stength_value_for_human
    assert_equal( 5, character_type_and_roll_value("human", 5) )
  end
  # The function should return the dice roll value times two if the hero is elf
  def test_returns_strength_value_times_2
    assert_equal( 6, character_type_and_roll_value("elf", 3) )
  end
  # The function should return half the dice roll for a dwarf
  def test_returns_strength_value_times_2
    assert_equal( 2, character_type_and_roll_value("dwarf", 4) )
  end
  # Create a should_eat function; that takes in a food(String) and season(String) - winter,summer,spring, autumn
  # return false if "ice cream" and "winter",
  # return false if "hot chocolate" and "summer",
  # returns true in all other cases
  def test_returns_false_for_ice_cream_and_winter
    assert_equal(false, should_eat("ice cream", "winter") )
  end

  def test_returns_false_for_hot_chocolate_and_summer
    assert_equal(false, should_eat("hot chocolate", "summer"))
  end

  def test_returns_true_for_other_combinations
    assert_equal(true, should_eat("ice cream", "spring"))
  end
end
