clear;
clc;

% This is a Simplified version game from Puzzle Based learning Assignment3
% The goal of that game is to fill a board of 2 rows and 2018 columns with
% zeros and ones so that two equal numers in two adjacent cells of the same
% row prevent the use of two equal numbers on the corresponding cells of the other row.

%------------------------------version one-------------------------------%

% a board of 2 rows and 2018 columns is too much so, my first version will 
% only have a board of 2 rows and 5 columns.


% this version read the number from user in the board.



% create an empty 2D array for the board.
board = [];

% user populate the board
for rows = [1:2]  % 2 rows
    Rows = []; % empty array to store each row elements.
    for cols = [1:5] % 5 columns
        number = input("");% read in each element in board
        Rows = [Rows,number]; 
    end
    board = [board;Rows];
end

disp("This is your board");
% show your board.
disp(board);
disp("finish");
