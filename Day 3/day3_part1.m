clear variables
load day_3_input.mat
C = char(day3input);
unicodeValues = double(C);
unicodeValues(unicodeValues == 32) = NaN;

hex_a_z = 97:122;
a_z = 1:26;
unicodeValues = changem(unicodeValues, a_z, hex_a_z);

hex_A_Z = 65:90;
A_Z = 27:52;
unicodeValues = changem(unicodeValues, A_Z, hex_A_Z);

total = 0;
for i = 1:300
    sans_nans = sum(isnan(unicodeValues(i,:)));
    a1 = unicodeValues(i,1:(end-sans_nans)/2);
    b1 = unicodeValues(i,((end-sans_nans)/2)+1:end-sans_nans);
    dupes = intersect(a1,b1);
    total = total + dupes;
end