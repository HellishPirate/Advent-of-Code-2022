clear variables
load day_3_input.mat
C = char(day3input);
unicodeValues = double(C);
unicodeValues(unicodeValues == 32) = NaN;

dec_a_z = 97:122;
a_z = 1:26;
unicodeValues = changem(unicodeValues, a_z, dec_a_z);

dec_A_Z = 65:90;
A_Z = 27:52;
unicodeValues = changem(unicodeValues, A_Z, dec_A_Z);

total1 = 0;
for i = 1:300
    sans_nans = sum(isnan(unicodeValues(i,:)));
    a1 = unicodeValues(i,1:(end-sans_nans)/2);
    b1 = unicodeValues(i,((end-sans_nans)/2)+1:end-sans_nans);
    dupes1 = intersect(a1,b1);
    total1 = total1 + dupes1;
end

total2 = 0;
for j = 3:3:300
    a1 = unicodeValues(j-2:j,:);
    dupes2 = intersect(intersect(a1(1,:),a1(2,:)),a1(3,:));
    total2 = total2 + dupes2;
end
