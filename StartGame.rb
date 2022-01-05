class StartGame 

    attr_accessor :game 
  
    def initialize(game)
      @game = game 
    end
  
    def play_game
      puts "#{game.current_player.user_id} AND #{game.current_opponent.user_id} Let's play math game!!! Hey, #{game.current_player.user_id} -- you're up first!"
      while !game.game_is_over
        game.get_question_and_answer
        puts game.question
        user_input = gets.chomp.to_i
        game.check_response(user_input)
        puts game.validation_response 
        puts "#{game.current_player.user_id}: #{game.current_player.lives}/3 #{game.current_opponent.user_id}: #{game.current_opponent.lives}/3 "
        if !game.game_is_over
          puts "----NEW TURN----"
        end
        game.switch_players
      end
      puts "----GAME OVER----"
      puts "#{game.current_player.user_id} wins with a score of #{game.current_player.lives}/3 "
    end
  
  end