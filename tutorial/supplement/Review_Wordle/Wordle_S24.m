rng(45)


word = 'abcde'
guess = 'acgfi'


%% option 1
colour = zeros(1,5); % Pre-define vector size 

% compare each letter in guess to word
for ii = 1:5
    for jj = 1:5
        if guess(ii) == word(jj) 
            colour(ii) = 1; 
        end

        if ii==jj
            colour(ii) = 2;
        end
    end
end


%% Option 2
colour = zeros(1,5); % Pre-define vector size 

% compare each letter in guess to word
for ii = 1:5
    for jj = 1:5
        if guess(ii) == word(jj) 
            colour(ii) = 1; 
            
            if ii==jj
                colour(ii)=2;
            end
            break;
        end
    end
end

colour
