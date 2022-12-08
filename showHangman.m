
function [hangmanPart] = showHangman(lives)
%SHOWHANGMAN displays each section of hangman as the lives decrement

% whole hangman picture
hangman = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ','/','|','\';'|',' ',' ',' ','|',' ';'|',' ',' ','/',' ','\';'=','=','=',' ',' ',' '];

% top bar
hangman9 = ['+','-','-','-',' ',' ';' ',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' '];
    

% top and left bar
hangman8 = ['+','-','-','-',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' '];
    

% top, left and bottom bars
hangman7 = ['+','-','-','-','|',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';' ',' ',' ',' ',' ',' '];
    
    
% bars and hanging bar
hangman6 = ['+','-','-','-','|',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    
    
% bars and face
hangman5 = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    
    
% bars, face and torso
hangman4 = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ',' ','|',' ';'|',' ',' ',' ','|',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    

% bars, face, torso and left arm
hangman3 = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ','/','|',' ';'|',' ',' ',' ','|',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    

% bars, face, torso, both arms
hangman2 = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ','/','|','\';'|',' ',' ',' ','|',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    

% bars, face, torso, arms and left leg
hangman1 = ['+','-','-','-','|',' ';'|',' ',' ',' ','O',' ';'|',' ',' ','/','|','\';'|',' ',' ','/','|',' ';'|',' ',' ',' ',' ',' ';'=','=','=','=',' ',' '];
    
    
% bars and whole hangman body
hangman0 = hangman;

% allocate each hangman part to a certain number of lives
    switch lives
        case 9
            hangmanPart = hangman9;
        case 8
            hangmanPart = hangman8;
        case 7
            hangmanPart = hangman7;
        case 6
            hangmanPart = hangman6;
        case 5
            hangmanPart = hangman5;
        case 4
            hangmanPart = hangman4;
        case 3
            hangmanPart = hangman3;
        case 2
            hangmanPart = hangman2;
        case 1
            hangmanPart = hangman1;
        case 0
            hangmanPart = hangman0;
        otherwise
            hangmanPart = [];
        end
end