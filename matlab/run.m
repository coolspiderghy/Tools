diary off;
!del ..\results.txt > nul;
diary '..\results.txt';
diary on;
getkmeans('S12', '07', 3);
getkmeans('S12', '08', 3);
getkmeans('S12', '09', 3);
getkmeans('S50', '09', 5);
getkmeans('S50', '10', 5);
getkmeans('R50', '09', 5);
getkmeans('R50', '10', 5);
getkmeans('S100', '10', 10);
getkmeans('S500', '10', 20);
diary off;