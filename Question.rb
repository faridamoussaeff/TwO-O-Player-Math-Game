class Question 

    attr_accessor :input_one, :input_two
  
    def generate_inputs 
      @input_one = rand(1...20)
      @input_two = rand(1...20)
    end
  
  
    def calculate_answer 
      @input_one + @input_two
    end
  
  end