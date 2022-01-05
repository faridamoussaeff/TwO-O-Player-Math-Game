require './Player'
require './Question'
require './Game'

player_one = Player.new("Frida", 3)
player_two = Player.new("John", 3)
game = Game.new(player_one, player_two)
puts game.current_player.user_id
puts game.current_opponent.user_id
game.current_player.remove_life
puts game.current_player.lives

game.switch_players
puts game.current_player.user_id
puts game.current_opponent.user_id
puts game.current_opponent.lives
puts game.current_player.lives

game.get_question_and_answer
puts game.answer 
puts game.question 

game.get_question_and_answer
puts game.answer 
puts game.question 