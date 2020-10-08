function cbRules(src,event,h)
    GUIversion = get(h,'UserData');
    % this line used to show the hint in the windows
    set(GUIversion.status,'string','The goal of that game is to fill a board of 2 rows and 2018 columns with zeros and ones so that two equal numers in two adjacent cells of the same  row prevent the use of two equal numbers on the corresponding cells of the other row. Hit CHECK to check your result.Or, Hit REWRITE to rewrite your board!');
end