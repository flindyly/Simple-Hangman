chosenWord = generateWord("hangmanDictEasy.txt");
disp(chosenWord);
disp(hideWord(chosenWord)); % length of dashes should match the length of the word


chosenWord = generateWord("hangmanDictHard.txt");
disp(chosenWord);
disp(hideWord(chosenWord)); % length of dashes should match the length of the word
