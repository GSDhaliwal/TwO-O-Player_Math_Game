require "./player"
require "./questions"

puts "Input first players name"
name1 = gets.chomp
player1 = Player.new(name1)
puts "Input second players name"
name2 = gets.chomp
player2 = Player.new(name2)

game_won = false
now_playing = player1
next_player = player2

while game_won != true
  question = Questions.new
  
  puts "Player #{now_playing.name}: #{question.question}"
  answer = gets.chomp.to_i
  
  if answer == question.answer
    puts "Player #{now_playing.name}: YES! You are correct."
  elsif answer != question.answer
    puts "Player #{now_playing.name}: Seriously? No!"
    now_playing.wrong
  end
  
  puts "Player #{now_playing.name}: #{now_playing.lives}/3 vs #{next_player.name}: #{next_player.lives}/3"
  
  if now_playing.lives > 0
    puts "----- NEW TURN -----"
  else
    puts "Player 2 wins with a score of #{next_player.lives}/3"
    puts "----- GAME OVER -----"
    game_won = true
  end

  if now_playing == player1
    now_playing = player2
    next_player = player1
  else
    now_playing = player1
    next_player = player2
  end
  
end