function [] = checkPrompt(flag)
%
if flag == 0 % if flag is 0 the user fail
        % update version five
        disp('Fail!');
        
        disp(" "); % blank line
        disp('Read the rules of the game carefully! ');
        disp(" "); % blank line
        
        % use gameRules function to show the game rule when the user fails.
        gameRules();
        
    else % if flag is 1 the user success
        % update version five
        disp('Success!')
        disp(" "); % blank line
        disp('You also have other 323 different ways to fill this board.');
    end
    
    disp(" "); % blank line
end

