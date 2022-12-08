% a 2D array of characters that displays the picture of 'hangman'

hangman = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ','/','|','\';'|',' ',' ',' ','|',' ';'|',' ',' ','/',' ','\';'=','=','=',' ',' ',' '];

% check dimensions of hangman vector - will be a 6 x 6 character array
disp(size(hangman));

% display the picture
disp(hangman);