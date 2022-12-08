% AIM: remove repeated letters from vectors so that win message not displayed too early
% LINES 41-56

clear all; % clear workspace
clc; % clear command window


% get random word
dictionary = "hangmanDictEasy.txt";
chosenWord = generateWord(dictionary);
    disp(chosenWord); % for checking

% hide letters of word
hiddenWord = hideWord(chosenWord);
disp(hiddenWord);

% initialise number of lives and guesses
numLives = 10;
fprintf("Lives left: %d \n ", numLives);

numGuesses = 0;

% empty vectors to store correct and incorrect letters
correctLetters = [];
incorrectLetters = [];

% check following statements while the number of lives has not reached 0
while (numLives>0)
    
    guess = input("Guess a letter: ", 's'); % read in string
    
    numGuesses = numGuesses + 1; % increment number of guesses
    
    charIndex = strfind(chosenWord, guess); % index of the letter guessed
    
    incorrectIndex = strfind(incorrectLetters, guess); % index of the incorrect letter guessed
    correctIndex = strfind(correctLetters, guess); % index of the correct letter guessed
    
     % if incorrect letter already guessed, inform user, make lives the
     % same, and don't show in vector
     if(guess==incorrectLetters(incorrectIndex))
         fprintf("You've already guessed the letter %s. Keep guessing. \n", guess);
         numLives = numLives + 1;
         numGuesses = numGuesses - 1;
         incorrectLetters(incorrectIndex)=[];
     end
     
     % if correct letter already guessed, remove letter from correctLetters
     % vector
     if(guess==correctLetters(correctIndex))
         fprintf("You've already guessed the letter %s. Keep guessing. \n", guess);
         numGuesses = numGuesses - 1;
         correctLetters(correctIndex)=[];
     end

    % if letter correctly guessed, display letter
    if(guess == chosenWord(charIndex))
        hiddenWord(charIndex) = guess;
        disp(hiddenWord);
        
        fprintf("Lives left: %d \n ", numLives);
        
        correctLetters = [correctLetters chosenWord(charIndex)]; % store in vector for checking        
        
    % else, continue hiding letters and decrease lives
    else
        disp(hiddenWord); 
         
        numLives = numLives-1;
        fprintf("Lives left: %d \n ", numLives);
        
        incorrectLetters = [incorrectLetters guess];  % add incorrect letter to incorrectLetters vector

    end
    
    % display correctly and incorrectly guessed letters
    fprintf("Correct letters: %s \n", correctLetters); 
    fprintf("Incorrect letters: %s \n", incorrectLetters);
    
    % display number of guesses
    fprintf("Guesses: %d \n ", numGuesses);
    
    % if all letters guessed without losing all lives, display
    % congratulations and end the loop
     if (length(correctLetters)==length(chosenWord))
         disp("Congratulations, you guessed the word!");
         break
     end
    
end

% if no lives left and all letters have not been guessed, user loses 
if numLives==0
    fprintf("You lost. The word was %s. \n", chosenWord);
    
end
