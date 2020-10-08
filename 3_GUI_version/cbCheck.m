function cbCheck(src,event,h)
    %% Read in numbers 
    GUIversion = get(h,'UserData');
    for rows = 1:2
        for cols =1:5
            string_ij = get(GUIversion.X(rows,cols),'string');
            if (str2double(string_ij)==0 || str2double(string_ij)==1)                
                %set(GUIversion.status,'string','please wait');
                board(rows,cols) = str2double(get(GUIversion.X(rows,cols),'string')); 
                
            else
                set(GUIversion.status,'string','please enter 0 or 1!');
                return;
            end
            
        end
    end
    %% check it
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
    
    if flag == 1
        set(GUIversion.status,'string','SUCCESS! You also have other 323 different ways to fill this board.');
    else
        set(GUIversion.status,'string','FAIL! Read the rules of the game carefully!  ');
        

end

