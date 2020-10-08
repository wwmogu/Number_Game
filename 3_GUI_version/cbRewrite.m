function cbRwrite(src,event,h)
    GUIversion = get(h,'UserData');

    for rows = 1:2
        for cols =1:5
            set(GUIversion.X(rows,cols),'string',[]);
        end
    end
    % this line used to show the hint in the windows
    set(GUIversion.status,'string','Now, you can rewrite your board!');
end