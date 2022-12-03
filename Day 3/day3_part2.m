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

a = unicodeValues(6:8,:);
dupes = intersect(intersect(a(1,:),a(2,:)),a(3,:));

total = 0;
for i = 3:3:300
    a1 = unicodeValues(i-2:i,:);
    dupes1 = intersect(intersect(a1(1,:),a1(2,:)),a1(3,:));
    total = total + dupes1;
end