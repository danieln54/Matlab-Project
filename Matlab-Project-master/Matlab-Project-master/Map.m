load project

Mapfigure = figure
mapdatac = [datac(:,4),datac(:,3)];
mapdatav = [datav(:,3),datav(:,4)];

mapdatac = cell2mat(mapdatac);
xlswrite('mapdatav.xlsx',mapdatav);
clear mapdatav
mapdatav = xlsread('mapdatav.xlsx');

worldmap([39.15 39.40],[-76.75 -76.5])

scatterm(mapdatac(:,1),mapdatac(:,2),.0001,'.')
hold on
scatterm(mapdatav(:,1),mapdatav(:,2),.0001,'r.')
scaleruler
