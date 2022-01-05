class Player 

    attr_accessor :user_id, :lives
  
    def initialize(user_id, lives)
      @user_id = user_id
      @lives = lives
    end
  
    def remove_life
      @lives = @lives - 1
    end
  end