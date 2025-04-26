% Question 1
seq = "MATLAB IS FUN! I Like IT";
m11_q1 = count(seq, 'A');

% Question 2
var2 = {'red', 'blue', 'red', 'orange', 'blue'};
m11_q2 = sum(strcmp(var2, 'red'));

% Question 3
var3 = 'abcdefgabcdeabcdeabcfsetsdgabcdegqidmsabc';
m11_q3 = strfind(var3, 'abc');

% Question 4
fname = ["Ju An", "Chul Min", "Noreen", "Vlad", "Jason"];
lname = ["Park", "Yeum", "Gao", "Fierastrau", "Connelly"];

lg = fname == "Chul Min";
lname_CM = lname(lg);

m11_q4 = lname_CM + ", " + "Chul Min";