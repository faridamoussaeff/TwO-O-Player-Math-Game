require './Player'
require './Question'
require './Game'
require './StartGame'

player_one = Player.new("Frida", 3)
player_two = Player.new("John", 3)
game = Game.new(player_one, player_two)
start = StartGame.new(game)
start.play_game
