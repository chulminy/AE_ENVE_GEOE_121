function row_new = MoveZeroRLVec(row)

row_new = zeros(1, numel(row));
lg_vec = row == 0;
num = sum(lg_vec);
row_new(num+1:end) = row(~lg_vec);

end
