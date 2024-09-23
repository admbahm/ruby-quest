require_relative 'player'

def prompt(message)
  print message
  gets.chomp
end

def adventure(player)
  puts "\nYou find yourself at a fork in the road. Do you go left or right?"
  choice = prompt("Enter 'left' or 'right': ").downcase
  if choice == 'left'
    puts "You venture down the left path and encounter a friendly wizard."
    puts "The wizard offers you a gem as a gift."
    player.collect_gem
  elsif choice == 'right'
    puts "You take the right path and stumble upon a grumpy troll."
    puts "The troll attacks you!"
    player.take_damage(20)
  else
    puts "Invalid choice. The indecision causes you to lose time."
    player.take_damage(10)
  end
end
# Main game loop
puts "Welcome to Ruby Quest: The Gem Hunter's Journey!"
player_name = prompt("What is your name, brave adventurer? ")
player = Player.new(player_name)

puts "Welcome, #{player.name}! Your quest to find magical gems begins now!"

while player.health > 0
  adventure(player)
  puts "\nYour current status:"
  puts "Health: #{player.health}"
  puts "Gems collected: #{player.gems}"

  continue = prompt("Do you want to continue your adventure? (yes/no): ").downcase
  break if continue != 'yes'
end

puts "Thanks for playing Ruby Quest! You collected #{player.gems} gems on your adventure."

