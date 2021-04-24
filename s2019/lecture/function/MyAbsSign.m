function [abs_val, sign_val] = MyAbsSign(in_val)

sign_val = sign(in_val); 
abs_val =  sign_val * in_val;

end



