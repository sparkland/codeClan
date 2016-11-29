require_relative('../bank_account_functions')
require_relative('../bank_data')
require('minitest/autorun')

class BankTest < MiniTest::Test

  def setup
    @accounts = ACCOUNTS
  end

  def test_total_number_of_accounts
    bank_accounts_count = number_of_bank_accounts(@accounts)
    assert_equal(8,bank_accounts_count)
  end

  def test_first_account_holder
    first_account = first_bank_account_holder(@accounts)
    assert_equal("Jay", first_account)
  end

  def test_bank_holder_names
    account_names = bank_account_owner_names(@accounts)
    expected = ["Jay","Rick","Keith","Valerie","Zsolt","Beth","Tony","Sandy"]
    assert_equal(expected, account_names)
  end

  def test_total_cash_in_bank
    total_cash = total_cash_in_bank('total', @accounts)
    assert_equal(7311, total_cash)
  end

  def test_total_cash_in_business_accounts
    total_cash_business = total_cash_in_bank('business', @accounts)
    assert_equal(7055,total_cash_business)
  end

  def test_total_cash_in_personal_accounts
    total_cash_personal = total_cash_in_bank('personal', @accounts)
    assert_equal(256,total_cash_personal)
  end

  def test_average_bank_account_value
    average_value = average_bank_account_value(@accounts)
    assert_equal(913,average_value)
  end

  def test_find_accounts_by_risk
    low_risk_accounts = accounts_by_risk('low', @accounts)
    assert_equal(3,low_risk_accounts)
    high_risk_accounts = accounts_by_risk('high', @accounts)
    assert_equal(3,high_risk_accounts)
    medium_risk_accounts = accounts_by_risk('medium', @accounts)
    assert_equal(2,medium_risk_accounts)
  end

  def test_name_of_largest_value_account_holder
    name_account_holder = highest_value_account_holder_name("all", @accounts)
    assert_equal("Sandy", name_account_holder)
  end

  def test_name_of_largest_personal_account_holder
    name_account_holder = highest_value_account_holder_name("personal", @accounts)
    assert_equal("Tony", name_account_holder)
  end

  def test_name_of_largest_business_account_holder
    name_account_holder = highest_value_account_holder_name("business", @accounts)
    assert_equal("Sandy", name_account_holder)
  end

end
