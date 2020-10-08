clear;
clc;
%------------------------------Function version-------------------------------%
% some update
% and
% change it to a function version

% set up a veriable,gameCheck, we will use it to loop our game.
gameCheck = input("Please enter 1 to start the game!  ");% ask user to start the  game

% use gameRules function to show the rules at the begining of the game.
gameRules();
while gameCheck ~= 0 % use while loop to implement play game many times if user want.
   
    % set up a veriable ,userCheck,we will use it to achieve user can
    % refill the board
    userCheck = 0;
    
    while userCheck~=1        
        % populate the board.
        board = populateBoard(2,5);
        clc;
        % show your board.
        disp("This is your board");
        disp(board);
        
        % update confirmPrompt function
        confirmPrompt();
        
        % ask user if they want to check the result now
        userCheck = input("Please enter your choice: ");
    end
    % prompt
    disp("Done, Ready to check!");
    disp(" "); % blank line
    
    % update pausePrompt function
    pausePrompt(5,"CHECKING......");
    clc;
    % use a flag check if user do not fill a correct board.
    % update a checkBoard function to update the value of the flag.
    flag = checkBoard(board,5-1);
    
    % update a checkPrompt function to prompt user success of not.
    checkPrompt(flag);
    
    % ask user if they want to do this game again.
    gameCheck = input("Please enter 0 to end the game or enter 1 to play it again!    ");% ask again 
end