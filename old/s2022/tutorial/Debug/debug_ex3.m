% How many 'apple' and 'mango'? (???)
% Your Script Here
word_seq = 'mangoabdecivaaappleiepwqmmango';

num_app_man = 0;

nseq = numel(word_seq);
ntest = 5;

for ii=1:nseq-ntest+1
    test_loc = ii:ii+ntest-1;
    if isequal(word_seq(test_loc), 'apple')
        num_app_man = num_app_man + 1;
    elseif isequal(word_seq(test_loc), 'mango')
        num_app_man = num_app_mam + 1;
    end
end

fprintf('The word sequence is \n');
disp(word_seq); 

fprintf('\nA number of apple and mango in word_seq are %d. \n', num_app_man);