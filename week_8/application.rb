require_relative("./functions/functions.rb")
require_relative("./data/data.rb")

class Main

  @datause = DATA

  puts "\n\rUser Appliction Manager\n\r"

  while true
    puts "\n\rOptions:"
    puts "\n\r1. Get Username By Name"
    puts "\n\r2. Get Which Applications Are Installed By Username"
    puts "q. Quit Applcation Manager"
    choice = gets.chomp()
    if(choice == "1")
      print "\n\rEnter Name: "
      namein = gets.chomp()
      rtnusername = get_username_by_name(namein, @datause)
      if(rtnusername == "")
        puts "Error: #{namein} is not stored"
      else
        puts(rtnusername)
      end
    elsif(choice == "2")
      print "\n\rEnter Username: "
      usernamein = gets.chomp()

    elsif(choice == "q")
      puts "\n\rQuiting...\n\r"
      break
    else
      puts "\n\rError: Invalid command\n\r"
    end
  end

end
