function out = MZ_RL (in_arr)

[nr, nz] = size(in_arr);

out = zeros(nr, nz);
for ii=1:nr
    vec = in_arr(ii,:);
    vec_new = MoveZeroRLVec(vec);
    out(ii,:) = vec_new;
end

end
