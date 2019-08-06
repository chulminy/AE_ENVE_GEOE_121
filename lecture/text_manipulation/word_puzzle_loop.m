is_word_same = 1;
for ii=1:6
    if word_db(ii)~=test_word(ii)
        is_word_same = 0;
    end
end

if is_word_same
   word_loc(:,2) = ii;
   word_loc(:,1) = test_loc;
   isRun = false;
   break;    
end


