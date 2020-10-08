clear;
clc;

% This is a Simplified version game from Puzzle Based learning Assignment3
% The goal of that game is to fill a board of 2 rows and 2018 columns with
% zeros and ones so that two equal numers in two adjacent cells of the same
% row prevent the use of two equal numbers on the corresponding cells of the other row.

%------------------------------version two-------------------------------%

% some update
% and
% This version will add the ability to check 
% if the user has filled in the numbers 
% according to the rules of the game. 


%---------------user populate board---------------%
% create an empty 2D array for the board.
board = [];
% user populate the board
for rows = [1:2]  % 2 rows
    Rows = []; % empty array to store each row elements.
    for cols = [1:5] % 5 columns
        % update promote user read in each cell
        number = input("please enter your number for each cell: ");% read in each element in board
        Rows = [Rows,number]; 
    end
    board = [board;Rows];
end

disp("This is your board");
% show your board.
disp(board);
disp("finish");



%---------- Version 2 check user fial or success -----------%

% use a flag check if user do not fill a correct board.
flag = 1;
for cols = [1:4]  % check 5-1 times
    checkP = []; % empty array to store previous one column
    checkN = []; % empty array to store next one column
    checkP = [board(1,cols);board(2,cols)];% store current one column is same as previous when the lood go ahead
    checkN = [board(1,cols+1);board(2,cols+1)]; % store next one column.   
    % when the previous one column is equal to next one column lose game.
    if checkP == checkN
        flag = 0;% change flag to 0
    end
end

if flag == 0 % if flag is 0 the user fail
    disp('fail');
else % if flag is 1 the user success
    disp('success');
end
