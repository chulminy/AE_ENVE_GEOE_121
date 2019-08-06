% Find id(s) of students whose scores are more than and equal to 80 and
% less than 90 in their midterm

mid_score = [71 82 85 76 91 100 82 83 65 51]';

cond1 = (mid_score>=80);
cond2 = (mid_score<90);
st_logi_mid = and(cond1, cond2);
st_id1 = find(st_logi_mid);


n_st = numel(mid_score);
st_id2 = [];
for ii=1:n_st
    score = mid_score(ii);
    if (score >=80) && (score<90)
        st_id2 = [st_id2; ii];
    end
end

st_id3 = zeros(n_st, 1);
count = 1;
for ii=1:n_st
    score = mid_score(ii);
    if (score >=80) && (score<90)
        st_id3(count) = ii;
        count = count + 1;
    end
end
st_id3(count:end) = [];

[st_id1 st_id2 st_id3]