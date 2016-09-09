module View

  def self.welcome
    puts "*"*50
    puts ""
    puts "Welcome to the SuperFunTimeGoGo3000(tm)"
    puts ""
    puts "Your one-stop, weekend plan suggestion engine"
    puts ""
    puts "*"*50
    puts ""
  end

  def self.get_zip
    puts "Please enter your zip: =D"
    zip = gets.chomp
  end

  def self.display_funtimes(activities)
    puts "*"*50
    puts "Your funtime activities are: "
    puts "*"*50
    puts "Museum: #{activities[0].name}"
    puts "Address: #{activities[0].address}, #{activities[0].zip}"
    puts "*"*50
    puts "Park: #{activities[1].name}"
    puts "Address: #{activities[1].location}, #{activities[1].zip}"
    puts "*"*50
    puts "Treat: #{activities[2].name}"
    puts "Street: #{activities[2].address}, #{activities[2].zip}"
    puts "*"*50
    puts "Have fun dawg."

  end

end