require_relative("../data/data.rb")
require_relative("../functions/functions.rb")
require('minitest/autorun')

class Tests < MiniTest::Test

  def setup
    @datain = DATA
  end

  def test_that_marks_username_is_mr
    username = get_username_by_name("Mark", @datain)
    assert_equal(username, "mr")
  end

  def test_that_username_st_returns_application_app1_is_installed
    installed = get_installed_app_by_username("st", @datain)
    assert_equal(installed, "App1")
  end

  def test_that_username_mr_returns_no_applications_are_installed
    installed = get_installed_app_by_username("mr", @datain)
    assert_equal(installed, "No applications installed")
  end

  def test_that_data_is_updated_accordingly
    skip
    username = "th"
    name = "Tom"
    add_new_entry_to_data_struct(name, username, @datain)

    lastuser = @datain.last

    assert_equal(lastuser[:name], name)
    assert_equal(lastuser[:username], username)
  end

end
