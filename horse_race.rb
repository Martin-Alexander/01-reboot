# Store the names of the horses
# Print all the names of the horses
# Store the users bet (i.e., the name of the horse)
# Randomly choose a winning horse
# Print the results of the user's bet (win or lose?)

# Extras

# Give the user a balance
# Make it loop
# Add or subract from that balance depending on the results
# Halt the program when the user runs out of money

users_balance = 500

horse_names = ["Charlie", "Horsey", "Sea Bisuit", "Mare", "Stalion"]

while users_balance >= 50
  puts "----------------"
  horse_names.each_with_index do |horse_name, i|
    puts "#{i + 1} - #{horse_name}"
  end
  puts "----------------"

  puts "Place your bet"
  users_bet = horse_names[gets.chomp.to_i - 1]

  winning_horse = horse_names.sample

  print "You chose #{users_bet}"

  if winning_horse == users_bet
    puts " and won"
    users_balance += 50
  else
    puts " and lost!"
    users_balance -= 20
  end

  puts "The winning horse was #{winning_horse}. Your balance is #{users_balance}"
end

puts "You are broke"
