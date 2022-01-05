require './Player'
require './Question'
require './Game'

player_one = Player.new("Frida", 3)
# puts player_one.user_id
# player_copy = player_one
# player_copy.user_id = "hM"
# puts player_one.user_id
# puts player_one.lives
# player_one.remove_life
# puts player_one.lives

# player_copy.remove_life
# puts player_one.lives

question_one = Question.new
puts question_one.input_one
question_one.generate_inputs
puts question_one.input_one
puts question_one.input_two
puts question_one.calculate_answer

question_one.generate_inputs
puts question_one.input_one
puts question_one.input_two
puts question_one.calculate_answer 