function modulus = FindTM(material)
% Find tensile modulus

switch material
    case 'c'
        modulus = 17;
    case 'p'
        modulus = 117;
    case 'w'
        modulus = 9;
    case 's'
        modulus = 180;
    case 'g'
        modulus = 74;
    case 'a'
        modulus = 40;
end




