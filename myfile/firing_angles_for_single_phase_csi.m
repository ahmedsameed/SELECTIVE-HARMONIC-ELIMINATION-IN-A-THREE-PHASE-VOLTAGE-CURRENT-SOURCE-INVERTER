clc;
clear all;
close all;
c=0.0001;
p1=11.5*pi/180;p2=24.5*pi/180;p3=33.5*pi/180;p4=49*pi/180;p5=60*pi/180;p6=75*pi/180;p7=81.5*pi/180;
i=1;
for t=0.01:0.001:1
    x(i)=t;
    M=t;
    K=[((pi*M/4+1)*0.5);0.5;0.5;0.5;0.5;0.5;0.5;];
    for y=1:1:100
        F=[cos(p1)-cos(p2)+cos(p3)-cos(p4)+cos(p5)-cos(p6)+cos(p7);
       cos(3*p1)-cos(3*p2)+cos(3*p3)-cos(3*p4)+cos(3*p5)-cos(3*p6)+cos(3*p7);
       cos(5*p1)-cos(5*p2)+cos(5*p3)-cos(5*p4)+cos(5*p5)-cos(5*p6)+cos(5*p7);
       cos(7*p1)-cos(7*p2)+cos(7*p3)-cos(7*p4)+cos(7*p5)-cos(7*p6)+cos(7*p7);
       cos(9*p1)-cos(9*p2)+cos(9*p3)-cos(9*p4)+cos(9*p5)-cos(9*p6)+cos(9*p7);
       cos(11*p1)-cos(11*p2)+cos(11*p3)-cos(11*p4)+cos(11*p5)-cos(11*p6)+cos(11*p7);
       cos(13*p1)-cos(13*p2)+cos(13*p3)-cos(13*p4)+cos(13*p5)-cos(13*p6)+cos(13*p7);];
    J=[-sin(p1) sin(p2) -sin(p3) sin(p4) -sin(p5) sin(p6) -sin(p7);
       -3*sin(3*p1) 3*sin(3*p2) -3*sin(3*p3) 3*sin(3*p4) -3*sin(3*p5) 3*sin(3*p6) -3*sin(3*p7);
       -5*sin(5*p1) 5*sin(5*p2) -5*sin(5*p3) 5*sin(5*p4) -5*sin(5*p5) 5*sin(5*p6) -5*sin(5*p7);
       -7*sin(7*p1) 7*sin(7*p2) -7*sin(7*p3) 7*sin(7*p4) -7*sin(7*p5) 7*sin(7*p6) -7*sin(7*p7);
       -9*sin(9*p1) 9*sin(9*p2) -9*sin(9*p3) 9*sin(9*p4) -9*sin(9*p5) 9*sin(9*p6) -9*sin(9*p7);
       -11*sin(11*p1) 11*sin(11*p2) -11*sin(11*p3) 11*sin(11*p4) -11*sin(11*p5) 11*sin(11*p6) -11*sin(11*p7);
       -13*sin(13*p1) 13*sin(11*p2) -13*sin(13*p3) 13*sin(13*p4) -13*sin(13*p5) 13*sin(13*p6) -13*sin(13*p7);];
   df=(J)\(K-F);
 p1=p1+df(1,:);
 p2=p2+df(2,:);
 p3=p3+df(3,:);
 p4=p4+df(4,:);
 p5=p5+df(5,:);
 p6=p6+df(6,:);
 p7=p7+df(7,:);
 L=max(df);
 if L<=c
     break;
 end
    end
p11(i)=p1*180/pi;
p22(i)=p2*180/pi;
p33(i)=p3*180/pi;
p44(i)=p4*180/pi;
p55(i)=p5*180/pi;
p66(i)=p6*180/pi;
p77(i)=p7*180/pi;
i=i+1;
end
plot(x,p11,'b');
hold on
plot(x,p22,'b');
plot(x,p33,'b');
plot(x,p44,'b');
plot(x,p55,'b');
plot(x,p66,'b');
plot(x,p77,'b');
hold off
