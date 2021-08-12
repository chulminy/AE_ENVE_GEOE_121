d_num = [0 1:10 128 255]';
b_num = de2bi(d_num, 8);
b_multi = 2.^(0:7);

[d_num b_num b_num*b_multi']

