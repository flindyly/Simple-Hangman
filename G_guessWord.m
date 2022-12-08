% AIM: increment number of guesses for each guess made

% initialise number of guesses and lives
numGuesses = 0;
numLives = 5;


while (numLives>0)
    
   % ask user to input a letter
   guess = input("Guess a letter: ", 's');
   
   % increment number of guesses
   numGuesses = numGuesses +1;
   fprintf("Guesses: %d \n ", numGuesses);
   
   % toggle to run while loop 
   numLives = numLives - 1;
  
end
