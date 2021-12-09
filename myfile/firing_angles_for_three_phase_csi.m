clc;
clear all;
close all;
c=0.0001;
p11=3.5;p22=4;p33=11.5;p44=16.5;p55=19;p66=26;p77=29;
    p1=p11*pi/180;p2=p22*pi/180;p3=p33*pi/180;p4=p44*pi/180;p5=p55*pi/180;p6=p66*pi/180;p7=p77*pi/180;
i=1;
for t=0.01:0.01:1
    x(i)=t;
    M=t;
    K=[pi*M/4+cos(30*pi/180);cos(5*30*pi/180);cos(7*30*pi/180);cos(11*30*pi/180);cos(13*30*pi/180);cos(17*30*pi/180);cos(19*30*pi/180);];
for y=1:1:100
    F=[cos(p1)-cos(p2)+cos(p4)-cos(p5)+cos(p7)+cos(pi/3-p7)-cos(pi/3-p6)+cos(pi/3-p4)-cos(pi/3-p3)+cos(pi/3-p1)-cos(pi/3+p2)+cos(pi/3+p3)-cos(pi/3+p5)+cos(pi/3+p6);
       cos(5*p1)-cos(5*p2)+cos(5*p4)-cos(5*p5)+cos(5*p7)+cos(5*(pi/3-p7))-cos(5*(pi/3-p6))+cos(5*(pi/3-p4))-cos(5*(pi/3-p3))+cos(5*(pi/3-p1))-cos(5*(pi/3+p2))+cos(5*(pi/3+p3))-cos(5*(pi/3+p5))+cos(5*(pi/3+p6)); 
       cos(7*p1)-cos(7*p2)+cos(7*p4)-cos(7*p5)+cos(7*p7)+cos(7*(pi/3-p7))-cos(7*(pi/3-p6))+cos(7*(pi/3-p4))-cos(7*(pi/3-p3))+cos(7*(pi/3-p1))-cos(7*(pi/3+p2))+cos(7*(pi/3+p3))-cos(7*(pi/3+p5))+cos(7*(pi/3+p6));
       cos(11*p1)-cos(11*p2)+cos(11*p4)-cos(11*p5)+cos(11*p7)+cos(11*(pi/3-p7))-cos(11*(pi/3-p6))+cos(11*(pi/3-p4))-cos(11*(pi/3-p3))+cos(11*(pi/3-p1))-cos(11*(pi/3+p2))+cos(11*(pi/3+p3))-cos(11*(pi/3+p5))+cos(11*(pi/3+p6));
       cos(13*p1)-cos(13*p2)+cos(13*p4)-cos(13*p5)+cos(13*p7)+cos(13*(pi/3-p7))-cos(13*(pi/3-p6))+cos(13*(pi/3-p4))-cos(13*(pi/3-p3))+cos(13*(pi/3-p1))-cos(13*(pi/3+p2))+cos(13*(pi/3+p3))-cos(13*(pi/3+p5))+cos(13*(pi/3+p6));
       cos(17*p1)-cos(17*p2)+cos(17*p4)-cos(17*p5)+cos(17*p7)+cos(17*(pi/3-p7))-cos(17*(pi/3-p6))+cos(17*(pi/3-p4))-cos(17*(pi/3-p3))+cos(17*(pi/3-p1))-cos(17*(pi/3+p2))+cos(17*(pi/3+p3))-cos(17*(pi/3+p5))+cos(17*(pi/3+p6));
       cos(19*p1)-cos(19*p2)+cos(19*p4)-cos(19*p5)+cos(19*p7)+cos(19*(pi/3-p7))-cos(19*(pi/3-p6))+cos(19*(pi/3-p4))-cos(19*(pi/3-p3))+cos(19*(pi/3-p1))-cos(19*(pi/3+p2))+cos(19*(pi/3+p3))-cos(19*(pi/3+p5))+cos(19*(pi/3+p6));];
    J=[-sin(p1)+sin(pi/3-p1) sin(p2)+sin(pi/3+p2) -sin(pi/3-p3)-sin(pi/3+p3) -sin(p4)+sin(pi/3-p4) sin(p5)+sin(pi/3+p5) -sin(pi/3-p6)-sin(pi/3+p6) -sin(p7)+sin(pi/3-p7);
       -5*sin(5*p1)+5*sin(5*(pi/3-p1)) 5*sin(5*p2)+5*sin(5*(pi/3+p2)) -5*sin(5*(pi/3-p3))-5*sin(5*(pi/3+p3)) -5*sin(5*p4)+5*sin(5*(pi/3-p4)) 5*sin(5*p5)+5*sin(5*(pi/3+p5)) -5*sin(5*(pi/3-p6))-5*sin(5*(pi/3+p6)) -5*sin(5*p7)+5*sin(5*(pi/3-p7)); 
       -7*sin(7*p1)+7*sin(7*(pi/3-p1)) 7*sin(7*p2)+7*sin(7*(pi/3+p2)) -7*sin(7*(pi/3-p3))-7*sin(7*(pi/3+p3)) -7*sin(7*p4)+7*sin(7*(pi/3-p4)) 7*sin(7*p5)+7*sin(7*(pi/3+p5)) -7*sin(7*(pi/3-p6))-7*sin(7*(pi/3+p6)) -7*sin(7*p7)+7*sin(7*(pi/3-p7));
       -11*sin(11*p1)+11*sin(11*(pi/3-p1)) 11*sin(11*p2)+11*sin(11*(pi/3+p2)) -11*sin(11*(pi/3-p3))-11*sin(11*(pi/3+p3)) -11*sin(11*p4)+11*sin(11*(pi/3-p4)) 11*sin(11*p5)+11*sin(11*(pi/3+p5)) -11*sin(11*(pi/3-p6))-11*sin(11*(pi/3+p6)) -11*sin(11*p7)+11*sin(11*(pi/3-p7));
       -13*sin(13*p1)+13*sin(13*(pi/3-p1)) 13*sin(13*p2)+13*sin(13*(pi/3+p2)) -13*sin(13*(pi/3-p3))-13*sin(13*(pi/3+p3)) -13*sin(13*p4)+13*sin(13*(pi/3-p4)) 13*sin(13*p5)+13*sin(13*(pi/3+p5)) -13*sin(13*(pi/3-p6))-13*sin(13*(pi/3+p6)) -13*sin(13*p7)+13*sin(13*(pi/3-p7));
       -17*sin(17*p1)+17*sin(17*(pi/3-p1)) 17*sin(17*p2)+17*sin(17*(pi/3+p2)) -17*sin(17*(pi/3-p3))-17*sin(17*(pi/3+p3)) -17*sin(17*p4)+17*sin(17*(pi/3-p4)) 17*sin(17*p5)+17*sin(17*(pi/3+p5)) -17*sin(17*(pi/3-p6))-17*sin(17*(pi/3+p6)) -17*sin(17*p7)+17*sin(17*(pi/3-p7));
       -19*sin(19*p1)+19*sin(19*(pi/3-p1)) 19*sin(19*p2)+19*sin(19*(pi/3+p2)) -19*sin(19*(pi/3-p3))-19*sin(19*(pi/3+p3)) -19*sin(19*p4)+19*sin(19*(pi/3-p4)) 19*sin(19*p5)+19*sin(19*(pi/3+p5)) -19*sin(19*(pi/3-p6))-19*sin(19*(pi/3+p6)) -19*sin(19*p7)+19*sin(19*(pi/3-p7));];
   df=inv(J)*(K-F);
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
p11=p1*180/pi;
p22=p2*180/pi;
p33=p3*180/pi;
p44=p4*180/pi;
p55=p5*180/pi;
p66=p6*180/pi;
p77=p7*180/pi;
m(i)=rem(p11,360);
n(i)=rem(p22,360);
o(i)=rem(p33,360);
p(i)=rem(p44,360);
q(i)=rem(p55,360);
r(i)=rem(p66,360);
s(i)=rem(p77,360);
i=i+1;
end
plot(x,m,'b');
hold on
plot(x,n,'b');
plot(x,o,'b');
plot(x,p,'b');
plot(x,q,'b');
plot(x,r,'b');
plot(x,s,'b');
hold off
