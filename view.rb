module View

  def self.get_zip
    puts "Enter your zip =D"
    zip = gets.chomp
  end

  def self.display_funtimes(activities)
    puts "Your funtime activities are: "
    puts "Museum: #{activities[0].name}"
    puts "address: #{activities[0].address}, #{activities[0].zip} \n"
    puts "Park: #{activities[1].name}"
    puts "address: #{activities[1].location}, #{activities[1].zip}"
    puts "have fun dawg."

  end

end