function [board] = populateBoard(R,C)
% this function read in the rows and columns of the board, than ask user to populate the board
% finally return the finished board data.

        %---------------user populate board---------------%
        % create an empty 2D array for the board.
        board = [];
        % user populate the board
        for rows = [1:R]  % 2 rows
            Rows = []; % empty array to store each row elements.
            for cols = [1:C] % 5 columns
                % update which cell does user input
                fprintf("Please enter your number in row %d,column %d: ",rows,cols);

                % update delete promote user read in each cell
                number = input("");% read in each element in board

                % update version 4 check if user enter 0 or 1
                while number~=1 && number~=0
                    fprintf("please enter only 0 or 1.\n    Enter your number in row %d,column %d again: ",rows,cols);
                    number = input("");
                end        

                Rows = [Rows,number]; 
                clc;
                % update show finished board row.
                fprintf("This is your current row %d.\n",rows);
                disp(Rows);
            end
            board = [board;Rows];
        end
end

