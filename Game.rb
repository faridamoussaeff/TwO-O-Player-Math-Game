require "./Question"

class Game
    @@question_instance = Question.new

    attr_accessor :current_player, :current_opponent, :answer, :question, :validation_response
  
    def initialize(current_player, current_opponent)
      @current_player = current_player
      @current_opponent = current_opponent
    end 
  
    def switch_players 
      p1 = @current_player
      p2 = @current_opponent
      @current_player = p2
      @current_opponent = p1
    end
  
    def get_question_and_answer
      @@question_instance.generate_inputs
      @question = "Question for #{@current_player.user_id}: What is the sum of #{@@question_instance.input_one} and #{@@question_instance.input_two}?"
      @answer =  @@question_instance.calculate_answer
    end
    def check_response(user_input)
      if user_input != @answer
        @current_player.remove_life
        @validation_response = "#{current_player.user_id}, you are incorrect"
      else
        @validation_response = "#{current_player.user_id}, you are correct!"
      end
    end
end 