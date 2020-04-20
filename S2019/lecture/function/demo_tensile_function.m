num_data = 100;
num_material = 6;
material_char = ['c', 'p', 'w', 's', 'g', 'a'];
strain_data = randi(10000, num_data, 1); % 
material_data = zeros(num_data,1);
for ii=1:num_data
   material_data(ii) = material_char(randi(num_material));
end
tensile_stress = zeros(num_data,1);

for ii = 1:num_data
    material_test = material_data(ii); % material character
    strain_test = strain_data(ii); % strain data
    tm_test = FindTM(material_test); % find tensile modulus
    tensile_stress(ii) = stress_test * tm_test; % comput tensile stress
end


