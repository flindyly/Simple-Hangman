
function [words] = dictWords(textFile)
%DICTWORDS reads words from a text file and stores them in a vector

    % read text file
    wordList = fileread(textFile); % fileread displays words in one long array of characters
    
    % split words in array based on newline character 
    cellWords = splitlines(wordList); % splitlines splits each word into a 50x1 cell array
    
    % create empty vector to store list of words 
    words = [];
    
    % convert each word in cellWords to a string and add to the words vector
    for i = [1:length(cellWords)]
        words = [words string(cellWords(i))];
    end
end
