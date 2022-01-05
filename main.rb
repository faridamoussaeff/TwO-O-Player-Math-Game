require './Player'
require './Question'
require './Game'
require './StartGame'

player_one = Player.new("Frida", 3)
player_two = Player.new("John", 3)
game = Game.new(player_one, player_two)
StartGame.new(game)

# game.get_question_and_answer
# game.check_response(1)
# puts game.validation_response
# puts game.current_player.lives

# game.switch_players
# game.check_response(10)
# puts game.validation_response
# puts game.current_opponent.lives
