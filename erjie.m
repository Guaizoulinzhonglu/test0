clc,clear
num=[2.7];
den=[1,0.8,0.64];
t=0:0.01:20;
step(num,den,t);
[y,x,t]=step(num,den,t);
maxy=max(y);
yss=y(length(t));
pos=100*(maxy-yss)/yss;
for i=1;
    if y(i)==maxy
        n=i;end
end
tp=(n-1)*0.01;
y1=1.05*yss;
y2=0.95*yss;
i=m;
while i>0
    i=i-1;
    if y(i)>=y1
        y(i)<=y2;
        m=i;
        break
    end
end
ts=(m-1)*0.01;
title('单位阶跃响应')
Grid