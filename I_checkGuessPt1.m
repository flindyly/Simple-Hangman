% AIM: check if user guesses all letters correct before lives reach 0
% if not, user loses and program tells user the word

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

% empty vectors to store correctly guessed letters
 correctLetters = [];
 
% while lives haven't reached 0, keep asking and checking input
while (numLives>0)
    
    guess = input("Guess a letter: ", 's'); % read in string
    
    numGuesses = numGuesses + 1; % increment number of guesses
    fprintf("Guesses: %d \n ", numGuesses);
    
    charIndex = strfind(chosenWord, guess); % index of the letter guessed in the hangman word
    
    % if correct, display the correctly guessed letter(s)
    if(guess == chosenWord(charIndex))
        hiddenWord(charIndex) = guess;
        disp(hiddenWord);
        
        fprintf("Lives left: %d \n ", numLives); % print number of lives left (should be the same)
        
        correctLetters = [correctLetters chosenWord(charIndex)]; % store in vector for checking
        disp(correctLetters); 
    
    % if not, continue hiding letters and decrease lives
    else
        disp(hiddenWord); % display word hidden with dashes
         
        numLives = numLives-1; % decrement number of lives
        fprintf("Lives left: %d \n ", numLives);
        
    end
    
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
