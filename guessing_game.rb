
input = 0
num_guesses = 0
array = Array.new
comp_guess = rand(1..100)

puts "For reference only: Computer number is - - #{comp_guess}"
puts "I'm thinking of a number between 1 - 100. Try and guess the number. Double Dare Challenge: You only get 5 tries."

until num_guesses > 5
  input = gets.chomp.to_i
  array << input
  num_guesses += 1

  if input == 0
    puts "Does not compute. Numbers only please. Start over."
    break
  elsif input < comp_guess && num_guesses < 5
    puts "Your guess is too low. Try again."
  elsif input > comp_guess && num_guesses < 5
    puts "Your guess is too high. Try again."
  elsif input == comp_guess && num_guesses < 5
    puts "Big Winner! Your guessing game is STRONG!"
    break
  else
    puts "Sorry you lost..."
    break
  end
end

=begin
  if
    puts "Please guess a number"
    guesses = []
    input = gets.chomp
    guesses << input
  else
    puts "Sorry your game is now over."
  end
=end


=begin
puts "Please guess a number"
guesses = []
input = gets.chomp

  while
    if input != ''
      puts "Does not compute. I need numbers!"
    else
    guesses.push input
    input = gets.chomp
    end
  end
=end
