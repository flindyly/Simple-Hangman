
function [guess] = checkInput()
%CHECKINPUT checks that a user's input is only 1 letter and contains no
%special characters

    % create toggle for checking guess against following conditions
    guessStr = false;
    
    guess = input("Guess a letter: ", 's');
    
    % if user inputs more than one letter or special char, ask for input
    % again
    while (guessStr == false)
        
        % input has more than 1 letter
        if (length(guess)>1)
            guessStr = false;
            guess = input("Too many letters. Guess a letter: ", 's');
        
        % input contains special characters
        % isstrprop source: https://au.mathworks.com/help/matlab/ref/isstrprop.html
        elseif (isstrprop(guess, 'alpha')==false) % checks if user's guess is a letter
            guessStr = false;
            guess = input("Input is not a letter. Guess a letter: ", 's');
            
        % input has a space (ie. if string array is empty)
        elseif (isempty(guess)==true)
            guessStr = false;
            guess = input("No input detected. Guess a letter: ", 's');
        
            % else, toggle guessStr to true to end while loop
        else
            guessStr = true;
            
        end
    end
end