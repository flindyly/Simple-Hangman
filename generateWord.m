
function [hangmanWord] = generateWord(dictionary)
%GENERATEWORD generates a random word from a dictionary

% get words from function
words = dictWords(dictionary);  
    
% generate random integers between 1 and 50 to represent the index of each
% of the 50 words
randIndex = randi(50,1);

% display random word 
hangmanWord = char(words(randIndex)); 

end
