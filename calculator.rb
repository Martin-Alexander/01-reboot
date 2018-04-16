# Pseudo-code

# Greet the user
# Ask for the first number
# Ask for the second number
# Ask for the operation
# Return the result

def calculate(first_number, second_number, operation)
  if operation == "+"
    return first_number + second_number
  elsif operation == "-"
    return first_number - second_number
  elsif operation == "*"
    return first_number * second_number
  elsif operation == "/"
    return first_number / second_number
  else 
    return false
  end
end

loop do 
  puts "Welcome to the calculator"

  puts "First number:"
  first_number = gets.chomp.to_i

  puts "Operation?"
  operation = gets.chomp

  puts "Second number:"
  second_number = gets.chomp.to_i

  result = calculate(first_number, second_number, operation)

  break unless result

  puts "Your result is #{result}"
end