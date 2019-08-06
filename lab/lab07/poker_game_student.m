% The standard 52-card deck has 13 numbers and four different suits. The
% suit order is 'Clubs', 'Diamonds', 'Hearts', and 'Spades'. Seven Card
% Stud (https://www.pokerstars.com/poker/games/stud/) is a classic poker
% game where seven cards are distributed to each player. To win the game, a
% player has the highest rank out of all the players. The rankings can be
% found here: https://www.espacejeux.com/en/poker/combinations

% In this challenge, we are given seven cards. From the cards that we have,
% we need to write a script that finds the highest possible rank!

% For our purposes, each integer from 1 to 52 will represent the value and
% suit of a card, where from 1 to 52, the value and suit of the cards will
% proceed in the following order:
% Integer | Value and Suit
%---------|----------------
%   1     | 1 (Ace) of Clubs (C)
%   2     | 1 (Ace) of Diamonds (D)
%   3     | 1 (Ace) of Hearts (H)
%   4     | 1 (Ace) of Spades (S)
%   5     | 2 of Clubs (C)
%   6     | 2 of Diamonds (D)
%   .     |      .
%   .     |      .
%   49    | 13 (King) of Clubs (C)
%   50    | 13 (King) of Diamonds (D)
%   51    | 13 (King) of Hearts (H)
%   52    | 13 (King) of Spades (S)
% So, integer 1 starts from 1 (Ace) of Clubs, cycles through the suits in
% following values in order (Clubs, then Diamonds, Hearts, and Spades), and
% then moves to the next value (value of 2), cycles through the suits, 
% and so forth.

% As mentioned before, seven numbers within 1 to 52 have been randomly 
% generated to mimic a player receiving seven cards. 
clear; clc; 
your_cards = randperm(52,7);

% To help with converting from integers to a value and suit of a card,
% a function called "PrntCard" has been provided. The function, given a
% vector of integers, converts it to the value and suit of the card and 
% prints it to the command window. Please take a look at "PrntCard" to 
% understand how it works.

% **********************************NOTE**********************************
% In a game of Poker, an Ace can have a value of either 1 or 14.
% Thus, the card with the highest value in a deck is considered to be 
% 1 of Spades. Thus, given a 10, Jack, Queen, King and an Ace, this would
% also be considered a "straight", since the values still follow a
% consecutive order (10, 11, 12, 13, 14 <--Ace)
% ***********************************************************************

% Please make your own functions to find the highest possible rank.
% Here are some sample card sequences and corresponding ranks
% your_cards = [1 5 11 21 43 32 51]; % High card
% your_cards = [2 4 13 33 34 44 52]; % Two pairs 
% your_cards = [6 13 14 15 24 33 44]; % Three of a Kind
% your_cards = [4 16 32 41 44 46 48]; % Flush
% your_cards = [3 5 12 40 44 48 50]; % Straight
% your_cards = [2 14 18 22 25 26 30]; % Straight Flush
% your_cards = [6 11 17 18 19 20 37]; % Four of a Kind  
% your_cards = [10 15 16 34 38 41 46]; % Pair  
% your_cards = [18 21 22 23 29 41 43] % Full House
% your_cards = [2 21 38 42 46 49 50]; % Royal Straight Flush  

is_ryl_str_fls = ChckRylFls(your_cards); % Royal Straight Flush (Rank 1)
is_str_fls = ChckStrFls(your_cards); % Straight Flush (Rank 2)
is_fr_knd = ChckFrKnd(your_cards); % Four of a Kind (Rank 3)
is_fll_hs = ChckFllHs(your_cards); % Full House (Rank 4)
is_fls = ChckFls(your_cards); % Flush (Rank 5)
is_str = ChckStr(your_cards); % Straight (Rank 6)
is_thr_knd = ChckThrKnd(your_cards); % Three of a Kind (Rank 7)
is_tw_prs = ChckTwPrs(your_cards); % Two Pairs (Rank 8)
is_pr = ChckPr(your_cards); % Pair (Rank 9)

if is_ryl_str_fls == 1
    rank = 1;
elseif is_str_fls == 1
    rank = 2;
elseif is_fr_knd == 1
    rank = 3;
elseif is_fll_hs == 1
    rank = 4;
elseif is_fls == 1
    rank = 5;
elseif is_str == 1
    rank = 6;
elseif is_thr_knd == 1
    rank = 7;
elseif is_tw_prs == 1
    rank = 8;
elseif is_pr == 1
    rank = 9;
else
    rank = 10;
end

% Print the rank of your cards
PrntRank(rank)

function PrntCards(cards) 

suits = 'CDHS'; % C = Clubs, D = Diamonds, H = Hearts, S = Spades
fprintf('Your cards are: ');
for ii = 1:numel(cards)
    card_num = ceil(cards(ii)/4);
    % Card number is equal to number times card number is divisible by 4,
    % rounding up

    card_rem = rem(cards(ii),4); 
    % Top row (suit) has rem of 1 when divided by 4 and the second row has
    % a remainder of 2...
    
    if card_rem==0 
        card_rem=4; 
    end
    % when card_rem is 0, it indicates the fourth row.
    
    your_suit = suits(card_rem); 
    % The remainder is equal to the index of suits
    
    if ii~=numel(cards)
        fprintf('%d%s,  ', card_num, your_suit)
    else
        fprintf('%d%s. \n', card_num, your_suit)
    end
end

end

function PrntRank(rank)
rank_str = ["Royal Straight Flush", "Straight Flush", "Four of a Kind", ...
"Full House", "Flush", "Straight", "Three of a Kind", "Two Pairs", ...
"Pair", "High Card"];

fprintf('The rank of your cards is %s. \n', rank_str(rank));

end

% Check if your card ranking is Royal Flush
function is_ryl_str_fls = ChckRylFls(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_ryl_str_fls = PokerHidden(cards, 'rank1');

end

% Check if your card ranking is Straight Flush
function is_str_fls = ChckStrFls(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_str_fls = PokerHidden(cards, 'rank2');

end

% Check if your card ranking is Four of a Kind
function is_fr_knd = ChckFrKnd(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_fr_knd = PokerHidden(cards, 'rank3');

end

% Check if your card ranking is Full House
function is_fll_hs = ChckFllHs(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_fll_hs = PokerHidden(cards, 'rank4');

end

% Check if your card ranking is Flush
function is_fls = ChckFls(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_fls = PokerHidden(cards, 'rank5');

end

% Check if your card ranking is Straight
function is_str = ChckStr(cards)
% https://www.mathworks.com/matlabcentral/answers/114852-finding-consecutive-true-values-in-a-vector
card_vec = zeros(52,1);
card_vec(cards) = 1;
card_mat = reshape(card_vec, 4, []);

% 'A' become either 1 or 14. Thus, the first column in 'card_mat' is added
% to the end+1 column in 'card_mat'.
card_mat = [card_mat card_mat(:,1)];

card_sum = sum(card_mat); % sum cards in column direction

card_num = find(card_sum~=0); % find columns that have at least one of
% that card type - returns the index where that column is (card number)

str_ind = strfind(diff(card_num), [1 1 1 1]); 
% Straight must have five consecutive card numbers. Take the differece
% between each element and the element after Look for anywhere that the
% difference between the two cards is 1 (shows they are consecutuive) the
% difference between 5 cards should be 1 four consecutive times search if
% [1 1 1 1] is in your str_ind vector - if it is, is_str = true

is_str = ~isempty(str_ind);
end

% Check if your card ranking is Three of a Kind
function is_thr_knd = ChckThrKnd(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_thr_knd = PokerHidden(cards, 'rank7');

end

% Check if your card ranking is Two Pairs
function is_tw_prs = ChckTwPrs(cards)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% P-code
is_tw_prs = PokerHidden(cards, 'rank8');

end

% Check if your card ranking is Pair
function is_pr = ChckPr(cards)
card_vec = zeros(52,1);
card_vec(cards) = 1; 
card_mat = reshape(card_vec, 4, 13);  
% create 4x13 matrix where each row is equal to a different suit and each
% column is equal to a different card number. For example, the first column
% is 1 (Ace), the second column is 2, and so on.

card_sum = sum(card_mat);

is_pr = any(card_sum==2); 
% check if there is a column that has exactly two cards is a pair
end

