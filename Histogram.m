%loads in data from Project.m
load Project

%creates a figure for the histogram and compiles a numeric spreadsheet from
...imported data
figure('name','Histogram')
histogramdata = [tab_neighv(:,2),tab_neighc(:,2)]
histogramdata = cell2mat(histogramdata);

%Defines bin size
binedges = (0:50:1100)

%Calculates average number of crime for bins with neighborhoods by dividing
...summed crime by number of neighborhoods in bins
a = sum(histogramdata(find(histogramdata(:,1) <= 50),2))./length(find(histogramdata(:,1) <= 50))
b = sum(histogramdata(find(histogramdata(:,1) > 50 & histogramdata(:,1) <= 100),2))./length(find(histogramdata(:,1) > 50 & histogramdata(:,1) <= 100))
c = sum(histogramdata(find(histogramdata(:,1) > 100 & histogramdata(:,1) <= 150),2))./length(find(histogramdata(:,1) > 100 & histogramdata(:,1) <= 150))
d = sum(histogramdata(find(histogramdata(:,1) > 150 & histogramdata(:,1) <= 200),2))./length(find(histogramdata(:,1) > 150 & histogramdata(:,1) <= 200))
e = sum(histogramdata(find(histogramdata(:,1) > 200 & histogramdata(:,1) <= 250),2))./length(find(histogramdata(:,1) > 200 & histogramdata(:,1) <= 250))
f = sum(histogramdata(find(histogramdata(:,1) > 250 & histogramdata(:,1) <= 300),2))./length(find(histogramdata(:,1) > 250 & histogramdata(:,1) <= 300))
g = sum(histogramdata(find(histogramdata(:,1) > 300 & histogramdata(:,1) <= 350),2))./length(find(histogramdata(:,1) > 300 & histogramdata(:,1) <= 350))
h = sum(histogramdata(find(histogramdata(:,1) > 350 & histogramdata(:,1) <= 400),2))./length(find(histogramdata(:,1) > 350 & histogramdata(:,1) <= 400))
i = sum(histogramdata(find(histogramdata(:,1) > 400 & histogramdata(:,1) <= 450),2))./length(find(histogramdata(:,1) > 400 & histogramdata(:,1) <= 450))
j = sum(histogramdata(find(histogramdata(:,1) > 450 & histogramdata(:,1) <= 500),2))./length(find(histogramdata(:,1) > 450 & histogramdata(:,1) <= 500))
k = sum(histogramdata(find(histogramdata(:,1) > 500 & histogramdata(:,1) <= 550),2))
l = sum(histogramdata(find(histogramdata(:,1) > 550 & histogramdata(:,1) <= 600),2))./length(find(histogramdata(:,1) > 550 & histogramdata(:,1) <= 600))
m = sum(histogramdata(find(histogramdata(:,1) > 600 & histogramdata(:,1) <= 650),2))
n = sum(histogramdata(find(histogramdata(:,1) > 650 & histogramdata(:,1) <= 700),2))./length(find(histogramdata(:,1) > 650 & histogramdata(:,1) <= 700))
o = sum(histogramdata(find(histogramdata(:,1) > 700 & histogramdata(:,1) <= 750),2))./length(find(histogramdata(:,1) > 700 & histogramdata(:,1) <= 750))
p = sum(histogramdata(find(histogramdata(:,1) > 750 & histogramdata(:,1) <= 800),2))
q = sum(histogramdata(find(histogramdata(:,1) > 800 & histogramdata(:,1) <= 850),2))
r = sum(histogramdata(find(histogramdata(:,1) > 850 & histogramdata(:,1) <= 900),2))
s = sum(histogramdata(find(histogramdata(:,1) > 900 & histogramdata(:,1) <= 950),2))
t = sum(histogramdata(find(histogramdata(:,1) > 950 & histogramdata(:,1) <= 1000),2))
u = sum(histogramdata(find(histogramdata(:,1) > 1000 & histogramdata(:,1) <= 1050),2))
v = sum(histogramdata(find(histogramdata(:,1) > 1050 & histogramdata(:,1) <= 1100),2))./length(find(histogramdata(:,1) > 1050 & histogramdata(:,1) <= 1100))

%Setting matrix to store crime data
AvgVacantHomesPerBin = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v]

%Generates histogram with crime data
histogram('BinEdges',binedges,'BinCounts',AvgVacantHomesPerBin)
xlim([0 1100])
title('Average Number of Crimes vs Number of Vacant Homes Per Neighborhood')





