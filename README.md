## Description 
This is a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers betwee 1 and 20. The player whose turn it is prompted the question and must answer correctly or loose a life. 

## Details 
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

# Tasks 

## Task 1: Extract Nouns for Classes
Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

### Game
  has two players
  has a score 
  tracks the current player's turn (state)

### Player
  lives (initialized at 3 each)
  name (ex. player1, player2)

### Question
  question
  correct answer to check against

## Task 2: Write their roles
What is the role for each class?

Write out a brief paragraph describing the role that class will play in your app.

Remember that objects are important for two things:

State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)
Write down the methods for each class while also speaking to the following points:

What information is relevant to each class?
What will they need in order to be initialized?
What public methods will be defined on them?
Furthermore:

Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any?

### Question class
  no input variables needed to initialize => Question.new()
  This class will be responsible for generating two inputs (number between 1-20)
  Method called generate_inputs which is a public method that mutates the state of the question 
  State variables are input_one and input_two
  It needs a method calculate_answer wich calculates the correct answer to the question or a variable that holds the sum of the inputs 

### Player class 
  This class will be responsible for holding player-specific data
  This will be initialized with userid and the number of lives the player starts with => Player.new('Player_One', 3)
  Each player will have an identifier (user_id) and a variable that keeps the state of current number of lives (lives)
  The value of lives will be updated at the game level (if question at game level is wrong, then update player lives - 1)
    method remove_life updates player.lives to be player.lives-1

### Game class 
Initialize a new game with two players => Game.new(player_one, player_two)
Can use a method called play_game that starts a game and uses a while loop to continue until a player loses by reaching 0 lives
The state is current_player which points to the current player's turn 
 
 #### variables
  Game.question (string - readable current question to user)
  Game.answer (number - current answer for this round in the game)
  Game.current_player (player currently answering the question)
  Game.current_opponent (the player who is currently not participating)
  Game.validation_response (tells the player whether their answer is correct or not)
  <!-- Game.is_game_over (boolean value that is set to true when a player reaches a score of 0) -->

  #### methods 
  
1. get_question_and_answer => 

      a. calls Question.generate_input and updates Game.question to be a string with new inputs from the Question class

          - `Question for #{current_player.user_id}: What is the sum of #{question.input_one} + #{question.input_two}?`

      b. calls Question.calculate_answer and updates Game.answer

2. check_response => 

      a. checks whether the player's input matches Game.answer => conditional (Game.answer == user_input)

      b. if a is false, then : update the player's lives by calling current_player.remove_life

          - Game.validation_response = `#{current_player.user_id}, you are incorrect`

          -if current_player.lives == 0

            <!-- - Game.is_game_over = true  -->
            - append to Game.validation_response `You lose! #{Game.current_opponent.user_id} wins with #{Game.current_opponent.lives} lives'
      c. if a is true then output to the player: `#{current_player.user_id}, you are correct!`

3. switch_players => 

      a. current_opponent becomes current_player

      b. current_player becomes current_opponent 

4. play_game => 

      1. opens up I/O for user

      2. while loop using above methods to execute the game

        #### while loop algorithm is a method play_game 

          while player_one.lives != 0 || player_two lives != 0 
            1. Game.get_question_and_answer()
            2. Print Game.question to user and await user response (user_input)
            3. Game.check_response()
            4. Print Game.validation_response 
            5. Game.switch_players()

      3. output winning/gameover message after while loop is complete and shut down I/O connection 


