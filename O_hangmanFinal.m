% a1824289 - Hangman Game

clear all; % clear workspace
clc; % clear command window

% prompt user for name
userName = input("What is your name? ", 's');
fprintf(" Welcome %s, let's play Hangman! \n", userName);

% ask user to pick level
level = input("Pick a level: easy or hard? (Note: input is case sensitive) ",'s');

% run the respective function for the level chosen
if(level=="easy")
    hangmanEasy()
elseif(level=="hard")
    hangmanHard()
end

