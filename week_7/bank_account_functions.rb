def number_of_bank_accounts(accounts)
  return accounts.length
end


def first_bank_account_holder(accounts)
  return accounts.first[:holder_name]
end


def bank_account_owner_names(accounts)
  account_names = []

  for account in accounts
    account_names.push(account[:holder_name])
    # Push can also be done via account_names << account[:holder_name] -- shovel operator
  end

  return account_names
end

# def total_cash_in_bank(accounts)
#   total_cash = 0
#
#   for account in accounts
#     total_cash += account[:amount]
#   end
#
#   return total_cash
# end

def total_cash_in_bank(account_type=nil, accounts)
  total_cash = 0

  for account in accounts
    if (account[:type] == account_type && account_type != nil)
      total_cash += account[:amount]
    end
    if (account_type == nil)
      total_cash += account[:amount]
    end
  end

  return total_cash
end

def average_bank_account_value(accounts)
  total_cash = 0

  for account in accounts
    total_cash += account[:amount]
  end

  return total_cash / accounts.length # class -- could also be accounts.count
end

def accounts_by_risk(risk_level, accounts)
  number_of_accounts = 0

  for account in accounts
    if (account[:stats][:risk_level] == risk_level)
      number_of_accounts = number_of_accounts+1
    end
  end

  return number_of_accounts
end

def highest_value_account_holder_name(type=nil, accounts)
  highest_value_account = 0
  highest_value_name = "" # class -- could be single array holding data from the hash and return value from hash

  for account in accounts
    if type != nil
      if account[:amount] > highest_value_account && account[:type] == type
        highest_value_account = account[:amount]
        highest_value_name = account[:holder_name]
      end
    end
    if type == nil
      if account[:amount] > highest_value_account
        highest_value_account = account[:amount]
        highest_value_name = account[:holder_name]
      end
    end
  end

  return highest_value_name
end
