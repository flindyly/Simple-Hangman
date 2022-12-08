% Final hangman code - same code used for both easy and hard levels, only
% dictionary is changed

clear all; % clear workspace
clc; % clear command window


% get random word
dictionary = "hangmanDictEasy.txt";
chosenWord = generateWord(dictionary);

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
    
    guess = checkInput(); % read in letter and check if valid
    
    numGuesses = numGuesses + 1; % increment number of guesses
    
    % strfind function source: https://au.mathworks.com/help/matlab/ref/strfind.html
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
        
        hangmanPart = showHangman(numLives); % display hangman parts when lives remain the same
        disp(hangmanPart);
        
    % else, continue hiding letters and decreasing lives
    else
        disp(hiddenWord); 
         
        numLives = numLives-1;
        fprintf("Lives left: %d \n ", numLives);
        
        incorrectLetters = [incorrectLetters guess];  % add incorrect letter to incorrectLetters vector
        
        hangmanPart = showHangman(numLives); % display hangman parts as lives decrease
        disp(hangmanPart);
        
    end
    
    % display incorrectly guessed letters
    fprintf("Letters already guessed: %s \n", incorrectLetters);
    
    % display number of guesses
    fprintf("Guesses: %d \n ", numGuesses);
    
    % if all letters guessed before lives reach 0, display
    % congratulations and number of tries 
     if (length(correctLetters)==length(chosenWord))
         fprintf("Congratulations, you guessed the word %s in %d tries! \n", chosenWord, numGuesses);
         break
     end
    
end

% if no lives left and all letters have not been guessed, user loses 
if numLives==0
    fprintf("You lost. The word was %s. \n", chosenWord);
    
end

