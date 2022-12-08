
function [chosenWord] = hideWord(chosenWord)
%HIDEWORD converts all characters in a letter to dashes

    for i = 1:length(chosenWord)
        chosenWord(i) = '-';
    end
 
end