require("minitest/autorun")
require_relative ("./my_functions")

class FunctionTest < MiniTest::Test

  def test_greet()
    greeting = greet("Jay", "morning")
    assert_equal("Good morning Jay",greeting)
  end

  def test_capitalizes_name()
    name = capitalize("rick")
    assert_equal("Rick",name)
  end

end
