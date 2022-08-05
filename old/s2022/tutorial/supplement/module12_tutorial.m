cards = [1 2 3 4 5 6 7];
str_cards = StrCard(cards);


function str_cards = StrCard(cards) 

suits = 'CDHS'; 
str_cards = "";
for ii = 1:numel(cards)
    card_num = ceil(cards(ii)/4);
    card_rem = rem(cards(ii),4); 

    if card_rem==0 
        card_rem=4; 
    end

    card_suit = suits(card_rem); 
    
    str_cards = str_cards +  ...
        sprintf("%d%s ", card_num, card_suit);
end

str_cards{1}(end) = [];

end
