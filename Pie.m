%loads in data from Project.m
load Project

%creates a figure for the histogram and compiles a numeric spreadsheet from
...imported data
figure('name','Pie')
piedata = [tab_neighv(:,2),tab_neighc(:,2)]
piedata = cell2mat(piedata);

%Defines bin size
binedges = (50:50:1100)

%Calculates average number of crime for bins with neighborhoods by dividing
...summed crime by number of neighborhoods in bins
a = sum(piedata(find(piedata(:,1) <= 50),2))./length(find(piedata(:,1) <= 50))
b = sum(piedata(find(piedata(:,1) > 50 & piedata(:,1) <= 100),2))./length(find(piedata(:,1) > 50 & piedata(:,1) <= 100))
c = sum(piedata(find(piedata(:,1) > 100 & piedata(:,1) <= 150),2))./length(find(piedata(:,1) > 100 & piedata(:,1) <= 150))
d = sum(piedata(find(piedata(:,1) > 150 & piedata(:,1) <= 200),2))./length(find(piedata(:,1) > 150 & piedata(:,1) <= 200))
e = sum(piedata(find(piedata(:,1) > 200 & piedata(:,1) <= 250),2))./length(find(piedata(:,1) > 200 & piedata(:,1) <= 250))
f = sum(piedata(find(piedata(:,1) > 250 & piedata(:,1) <= 300),2))./length(find(piedata(:,1) > 250 & piedata(:,1) <= 300))
g = sum(piedata(find(piedata(:,1) > 300 & piedata(:,1) <= 350),2))./length(find(piedata(:,1) > 300 & piedata(:,1) <= 350))
h = sum(piedata(find(piedata(:,1) > 350 & piedata(:,1) <= 400),2))./length(find(piedata(:,1) > 350 & piedata(:,1) <= 400))
i = sum(piedata(find(piedata(:,1) > 400 & piedata(:,1) <= 450),2))./length(find(piedata(:,1) > 400 & piedata(:,1) <= 450))
j = sum(piedata(find(piedata(:,1) > 450 & piedata(:,1) <= 500),2))./length(find(piedata(:,1) > 450 & piedata(:,1) <= 500))
k = sum(piedata(find(piedata(:,1) > 500 & piedata(:,1) <= 550),2))
l = sum(piedata(find(piedata(:,1) > 550 & piedata(:,1) <= 600),2))./length(find(piedata(:,1) > 550 & piedata(:,1) <= 600))
m = sum(piedata(find(piedata(:,1) > 600 & piedata(:,1) <= 650),2))
n = sum(piedata(find(piedata(:,1) > 650 & piedata(:,1) <= 700),2))./length(find(piedata(:,1) > 650 & piedata(:,1) <= 700))
o = sum(piedata(find(piedata(:,1) > 700 & piedata(:,1) <= 750),2))./length(find(piedata(:,1) > 700 & piedata(:,1) <= 750))
p = sum(piedata(find(piedata(:,1) > 750 & piedata(:,1) <= 800),2))
q = sum(piedata(find(piedata(:,1) > 800 & piedata(:,1) <= 850),2))
r = sum(piedata(find(piedata(:,1) > 850 & piedata(:,1) <= 900),2))
s = sum(piedata(find(piedata(:,1) > 900 & piedata(:,1) <= 950),2))
t = sum(piedata(find(piedata(:,1) > 950 & piedata(:,1) <= 1000),2))
u = sum(piedata(find(piedata(:,1) > 1000 & piedata(:,1) <= 1050),2))
v = sum(piedata(find(piedata(:,1) > 1050 & piedata(:,1) <= 1100),2))./length(find(piedata(:,1) > 1050 & piedata(:,1) <= 1100))

%Setting matrix to store crime data
AvgVacantHomesPerBin = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v]

%Generates pie chart with crime data
pie(AvgVacantHomesPerBin)

%Generates text and legend
percentagetext = findobj(p,'Type','text')
percentvalues = get(percentagetext,'String')
txt = {'50: ';'100: ';'150: ';'200: ';'250: ';'300: ';'350: ';'400: ';'450: ';'500: ';'600: ';'700: ';'750: ';'1100: '}
txt = flipud(txt)
combinedtxt = strcat(txt,percentvalues)
for i = 1:14
    percentagetext(i).String = combinedtxt(i);
end
pieslicelabels = {'0-50 Vacant Homes','50-100 Vacant Homes','100-150 Vacant Homes','150-200 Vacant Homes','200-250 Vacant Homes','250-300 Vacant Homes','300-350 Vacant Homes','350-400 Vacant Homes','400-450 Vacant Homes','450-500 Vacant Homes','550-600 Vacant Homes','650-700 Vacant Homes','700-750 Vacant Homes','1050-1100 Vacant Homes'}
legend(pieslicelabels,'Location','bestoutside')


