

vec1 = randi(100,1, 10);
vec_org = vec1;

for ii=1:numel(vec1)
    test_value = vec1(ii);
    if test_value > 0
        if test_value<50
            repl_value = 10;
        else
            repl_value = 5;
        end
    else
        repl_value = 5;
    end
    vec1(ii) = repl_value;
end

vec2 = vec_org;
logi_10 = and(vec_org>0, vec_org<50);
vec2(logi_10) = 10; 
vec2(~logi_10) = 5;


