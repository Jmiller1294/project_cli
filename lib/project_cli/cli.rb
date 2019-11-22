class ProjectCli::CLI
  
  def call 
    puts "Would you like to know the weather?"
    location
    
  end
  
  def location
    puts "Enter the location of where you would like to know the weather"
    input = gets.strip
    case input
    when "New York"
      puts "78 degrees"
    when "Chicago"
      puts "53 degrees"
    end
  end 
end