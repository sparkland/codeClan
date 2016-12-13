#class Functions

  def get_username_by_name(name, users)
    username = ""

    for user in users
      if (user[:name] == name)
        username = user[:username]
      end
    end

    return username
  end

  def get_installed_app_by_username(username, users)
    applicationinstalledlist = ""

    for user in users
      if(user[:username] == username)
        if(user[:applicationdetails][:installed] == true)
          applicationinstalledlist = user[:application]
        end
      end
    end

    if applicationinstalledlist == ""
      return "No applications installed"
    else
      return applicationinstalledlist
    end
  end

  def add_new_entry_to_data_struct(name, username, users)

    constructuser = "{
        name: \"#{name}\",
        username: \"#{username}\",
        application: \"App1\",
        applicationdetails:
        {
          installed: false,
          path: \"C:\\Applications\\App1\"
        }
      }"

    for user in users
      if (user == users.last)
        users << constructuser
      end
    end
  end

#end
