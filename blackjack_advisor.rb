cards = 0
players_hand = {}
players_hand[:cards] = []
first_card = 0
second_card = 0
dealers_card = 0

card_numbers = [2..10]
face_cards = 10

puts "Please enter your first card: "
first_card = gets.chomp

if first_card == "J"
  first_card = 10.to_i
elsif first_card == "Q"
  first_card = 10.to_i
elsif first_card == "K"
  first_card = 10.to_i
elsif first_card == "A"
  first_card = 11.to_i
else
  first_card = first_card.to_i
end

players_hand[:cards] << first_card

puts "Please enter your second card: "
second_card = gets.chomp

if second_card == "J"
  second_card = 10.to_i
elsif second_card == "Q"
  second_card = 10.to_i
elsif second_card == "K"
  second_card = 10.to_i
elsif first_card == "A"
  second_card = 11.to_i
else
  second_card = second_card.to_i
end

players_hand[:cards] << second_card

players_hand[:total] = 0
  players_hand[:cards].each do |i|
    players_hand[:total] += i
  end

puts "FOR REFERENCE: Player's card total is #{players_hand[:total]}"

puts "Please enter the dealer's card: "
dealers_card = gets.chomp

if dealers_card == "J"
  dealers_card = 10.to_i
elsif dealers_card == "Q"
  dealers_card = 10.to_i
elsif dealers_card == "K"
  dealers_card = 10.to_i
elsif dealers_card == "A"
  dealers_card = 11.to_i
else
  dealers_card = dealers_card.to_i
end

if first_card == second_card
  puts pair_hash << players_hand[:total]
elsif players_hand[:cards].include?(11)
  puts soft_hash << players_hand[:total]
else
  puts hard_hash << players_hand[:total]
end

  ### HARD HASH ###

  hard_hash = Hash.new()
    hard_hit_hash = Hash.new("Hit")
    hard_stay_hash = Hash.new("Stay")
    hard_doubleif_orhit_hash = Hash.new("Double if possible, otherwise hit")

  (5..9).each do |i|
    hard_hit_hash[i] = Hash.new("Hit")
  end

    hard_hash[8][5] = Hash.new("Double if possible, otherwise hit")
    hard_hash[8][6] = Hash.new("Double if possible, otherwise hit")
    hard_hash[9][2] = Hash.new("Double if possible, otherwise hit")
    hard_hash[9][3] = Hash.new("Double if possible, otherwise hit")
    hard_hash[9][4] = Hash.new("Double if possible, otherwise hit")
    hard_hash[9][5] = Hash.new("Double if possible, otherwise hit")
    hard_hash[9][6] = Hash.new("Double if possible, otherwise hit")

  (10..11).each do |i|
    hard_hit_hash[i] = Hash.new("Double if possible, otherwise hit")
  end

    hard_hash[10][10] = Hash.new("Hit")
    hard_hash[10][11] = Hash.new("Hit")

  (12..21).each do |i|
    hard_hit_hash[i] = Hash.new("Stay")
  end

    hard_hash[12][2] = Hash.new("Hit")
    hard_hash[12][3] = Hash.new("Hit")

    hard_hash[12][7] = Hash.new("Hit")
    hard_hash[12][8] = Hash.new("Hit")
    hard_hash[12][9] = Hash.new("Hit")
    hard_hash[12][10] = Hash.new("Hit")
    hard_hash[12][11] = Hash.new("Hit")

    hard_hash[13][7] = Hash.new("Hit")
    hard_hash[13][8] = Hash.new("Hit")
    hard_hash[13][9] = Hash.new("Hit")
    hard_hash[13][10] = Hash.new("Hit")
    hard_hash[13][11] = Hash.new("Hit")

    hard_hash[14][7] = Hash.new("Hit")
    hard_hash[14][8] = Hash.new("Hit")
    hard_hash[14][9] = Hash.new("Hit")
    hard_hash[14][10] = Hash.new("Hit")
    hard_hash[14][11] = Hash.new("Hit")

    hard_hash[15][7] = Hash.new("Hit")
    hard_hash[15][8] = Hash.new("Hit")
    hard_hash[15][9] = Hash.new("Hit")
    hard_hash[15][10] = Hash.new("Hit")
    hard_hash[15][11] = Hash.new("Hit")

  ### SOFT HASH ###

  soft_hash = Hash.new()
    soft_hit_hash = Hash.new("Hit")
    soft_stay_hash = Hash.new("Stay")
    soft_doubleif_orhit_hash = Hash.new("Double if possible, otherwise hit")
    soft_doubleif_orstay_hash = Hash.new("Double if possible, otherwise stay")

  (13..17).each do |i|
    soft_hit_hash[i] = Hash.new("Hit")
  end

    soft_hash[13][4] = Hash.new("Double if possible, otherwise hit")
    soft_hash[13][5] = Hash.new("Double if possible, otherwise hit")
    soft_hash[13][6] = Hash.new("Double if possible, otherwise hit")

    soft_hash[14][4] = Hash.new("Double if possible, otherwise hit")
    soft_hash[14][5] = Hash.new("Double if possible, otherwise hit")
    soft_hash[14][6] = Hash.new("Double if possible, otherwise hit")

    soft_hash[15][4] = Hash.new("Double if possible, otherwise hit")
    soft_hash[15][5] = Hash.new("Double if possible, otherwise hit")
    soft_hash[15][6] = Hash.new("Double if possible, otherwise hit")

    soft_hash[16][4] = Hash.new("Double if possible, otherwise hit")
    soft_hash[16][5] = Hash.new("Double if possible, otherwise hit")
    soft_hash[16][6] = Hash.new("Double if possible, otherwise hit")

    soft_hash[17][2] = Hash.new("Double if possible, otherwise hit")
    soft_hash[17][3] = Hash.new("Double if possible, otherwise hit")
    soft_hash[17][4] = Hash.new("Double if possible, otherwise hit")
    soft_hash[17][5] = Hash.new("Double if possible, otherwise hit")
    soft_hash[17][6] = Hash.new("Double if possible, otherwise hit")

  (18..21).each do |i|
    soft_hit_hash[i] = Hash.new("Stay")
  end

    soft_hash[18][3] = Hash.new("Double if possible, otherwise stay")
    soft_hash[18][4] = Hash.new("Double if possible, otherwise stay")
    soft_hash[18][5] = Hash.new("Double if possible, otherwise stay")
    soft_hash[18][6] = Hash.new("Double if possible, otherwise stay")

    soft_hash[18][9] = Hash.new("Hit")
    soft_hash[18][10] = Hash.new("Hit")

    soft_hash[19][6] = Hash.new("Double if possible, otherwise stay")

  ### PAIR HASH ###

  pair_hash = Hash.new()
    pair_hit_hash = Hash.new("Hit")
    pair_stay_hash = Hash.new("Stay")
    pair_split_hash = Hash.new("Split")
    pair_doubleif_orhit_hash = Hash.new("Double if possible, otherwise hit")

    pair_hash[4][8] = Hash.new("Hit")
    pair_hash[4][9] = Hash.new("Hit")
    pair_hash[4][10] = Hash.new("Hit")
    pair_hash[4][11] = Hash.new("Hit")

    pair_hash[6][9] = Hash.new("Hit")
    pair_hash[6][10] = Hash.new("Hit")
    pair_hash[6][11] = Hash.new("Hit")

    pair_hash[8][2] = Hash.new("Hit")
    pair_hash[8][3] = Hash.new("Hit")

    pair_hash[8][7] = Hash.new("Hit")
    pair_hash[8][8] = Hash.new("Hit")
    pair_hash[8][9] = Hash.new("Hit")
    pair_hash[8][10] = Hash.new("Hit")
    pair_hash[8][11] = Hash.new("Hit")

    pair_hash[10][2] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][3] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][4] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][5] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][6] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][7] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][8] = Hash.new("Double if possible, otherwise hit")
    pair_hash[10][9] = Hash.new("Double if possible, otherwise hit")

    pair_hash[10][10] = Hash.new("Hit")
    pair_hash[10][11] = Hash.new("Hit")

    pair_hash[12][8] = Hash.new("Hit")
    pair_hash[12][9] = Hash.new("Hit")
    pair_hash[12][10] = Hash.new("Hit")
    pair_hash[12][11] = Hash.new("Hit")

    pair_hash[14][9] = Hash.new("Hit")

    pair_hash[14][10] = Hash.new("Split")

    pair_hash[14][11] = Hash.new("Hit")

    pair_hash[18][7] = Hash.new("Stay")

    pair_hash[18][10] = Hash.new("Stay")
    pair_hash[18][11] = Hash.new("Stay")

  (20).each do |i|
    pair_stay_hash = Hash.new("Stay")
  end

  (22).each do |i|
    pair_split_hash = Hash.new("Split")
  end
