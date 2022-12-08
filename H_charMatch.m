% AIM: display a correctly guessed letter
% if input matches letter, program will output that letter surrounded by dashes

% get random word
dictionary = "hangmanDictEasy.txt";
chosenWord = generateWord(dictionary);
disp(chosenWord); % for checking

% hide letters of word
hiddenWord = hideWord(chosenWord);
disp(hiddenWord);
    
% ask user to input a letter
guess = input("Guess a letter: ", 's');

% index(es) of the letter guessed in the hangman word
% strfind function source: https://au.mathworks.com/help/matlab/ref/strfind.html
charIndex = strfind(chosenWord, guess);

% if user guesses a letter in the word, display the letter
if(guess == chosenWord(charIndex))
    disp('match found'); % for checking
    disp(charIndex); % for checking
    hiddenWord(charIndex) = guess;
end
disp(hiddenWord);

 
