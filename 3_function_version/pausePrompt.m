function [] = pausePrompt(secs,prompt)
% this function read in seconds and the prompt sentense pause secs seconds and prompt why pause. 
pause(1);
    for i = [secs:-1:1]% use a for loop to implement How many seconds do you want to pause.
        clc;
        % update tell user how many second do they need to wait.
        disp(prompt);
        
        fprintf("Please wait %d second\n",i);% update Make language more vivid
        
        pause(1); % this function can make programm pasue 1 second
    end
    disp(" "); % blank line
end

