clc;
clear all;
close all;

t1=-5:1:5; 
x1=0.2*sin((pi*t1)/6); 

t2=-5:0.0001:5;                                                                                                                                       
x2=0.1;

t=min(min(t1),min(t2)):max(max(t1),max(t2)); 

y1=zeros(1,length(t)); 
y2=zeros(1,length(t)); 

y1((t>=min(t1))&(t<=max(t1)))=x1(); 
y2((t>=min(t2))&(t<=max(t2)))=x2(); 

x=y1+y2; 
y=x1+x2; 

subplot(4,1,1); 
plot(t1,x1); 
title('signal 1'); 
axis([-8 8 -0.2 0.2]); 
grid 

subplot(4,1,2); 
plot(t2,x2); 
title('signal 2'); 
axis([-8 8 -0.2 0.2]); 
grid 

subplot(4,1,3); 
plot(t1,y); 
title('simple addition') 
axis([-8 8 -0.2 0.5]); 
grid

subplot(4,1,4); 
plot(t,x); 
title('addition'); 
axis([-8 8 -0.3 0.3]); 
grid 