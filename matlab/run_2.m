diary off;
system('del ..\..\Data\results2.txt > nul');
diary '..\..\Data\results2.txt';
diary on;
get2spkmeans('S12', '07', 3);
get2spkmeans('S12', '08', 3);
get2spkmeans('S12', '09', 3);
get2spkmeans('S50', '09', 5);
get2spkmeans('S50', '10', 5);
get2spkmeans('R50', '09', 5);
get2spkmeans('R50', '10', 5);
get2spkmeans('S100', '10', 10);
get2spkmeans('S500', '10', 20);
diary off;