function [flag] = checkBoard(board,times)
% read in board which need to check and check times which is board columns minus one.
    flag = 1;
    for cols = [1:times]  % check 5-1 times
        checkP = []; % empty array to store previous one column
        checkN = []; % empty array to store next one column
        checkP = [board(1,cols);board(2,cols)];% store current one column is same as previous when the lood go ahead
        checkN = [board(1,cols+1);board(2,cols+1)]; % store next one column.   
        % when the previous one column is equal to next one column lose game.
        if checkP == checkN
            flag = 0;% change flag to 0
        end
    end
end

