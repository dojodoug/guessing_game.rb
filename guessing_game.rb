
input = 0
num_guesses = 0
array = []
comp_guess = rand(1..100)

puts "For reference only: Computer number is - - #{comp_guess}"
puts "I'm thinking of a number between 1 - 100. Try and guess the number. Double Dare Challenge: You only get 5 tries."

until num_guesses > 5
  input = gets.chomp.to_i

  if array.include?(input)
    puts "Deja vu...you have already selected that number."
    puts "Try again."
  elsif input == 0
    puts "Does not compute. Numbers only please. Start over."
    break
  elsif input < comp_guess && num_guesses < 5
    puts "Your guess is too low. Try again."
  elsif input > comp_guess && num_guesses < 5
    puts "Your guess is too high. Try again."
  elsif input == comp_guess && num_guesses < 5
    puts "BIG Winner! Your guessing game is STRONG!"
    break
  else
    puts "Sorry you lost..."
    break
  end

  array << input
  num_guesses += 1
end
