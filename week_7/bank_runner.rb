require_relative('bank_account_functions')
require_relative('bank_data')

@accounts = ACCOUNTS

puts "Welcome to our Bank, we care about people (honest)\n\r"
puts "What would you like to do?"

while true
  puts "\n\rOptions:\n\r"
  puts "  q: Exit"
  puts "  1: Show account holders"
  print "\n\r  Which? "
  choice = gets.chomp()
  if (choice == "q")
    puts "\r\n  Quiting..."
    break
  elsif (choice == "1")
    puts "\n\rNames of Account Holders:\n\r"
    puts bank_account_owner_names(@accounts)
    print "\n\r"
  else
    puts "\r\n  Not a valid command\r\n"
  end
end
