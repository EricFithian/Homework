class Team
  attr_accessor :team, :seed
  def initialize (team, seed)
    @team = team
    @seed = seed
  end
end

def print_main_screen
  puts "Welcome to Tournament Builder. Enter a number to choose a command."
  puts "1. Create Teams"
  puts "2. List Teams"
  puts "3. List Matchups"
  puts "0. Exit program"
end

# loop do
  print_main_screen
  command = gets.chomp
  case command
  when '1'
    puts "How many teams would you like to have in your tournament?"
    number = gets.chomp.to_i
    number.times do |team, seed|
      puts "What team would you like to add?"
      team = gets.chomp
      puts "And what seed are they? Please pick a number between 1 and #{number}."
      seed = gets.chomp.to_i
      puts "You have added #{team} as the #{(seed)} seed."  
       
    end
  end
# end  
