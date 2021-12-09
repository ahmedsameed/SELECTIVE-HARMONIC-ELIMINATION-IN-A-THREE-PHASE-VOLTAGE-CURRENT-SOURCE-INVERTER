clc;
clear all;
close all;
c=0.0001;
 p1=1.5*pi/180; p2=18*pi/180; p3=18.5*pi/180; p4=31*pi/180; p5=31.5*pi/180; p6=45.5*pi/180; p7=46*pi/180; p8=59.5*pi/180;
i=1;
for t=0.001:0.001:1
    x(i)=t;
    M=t;
   K=[(1-M*pi/4)*0.5;0.5;0.5;0.5;0.5;0.5;0.5;0.5;];
for y=1:1:100
 F=[cos(p1)-cos(p2)+cos(p3)-cos(p4)+cos(p5)-cos(p6)+cos(p7)-cos(p8);
    cos(5*p1)-cos(5*p2)+cos(5*p3)-cos(5*p4)+cos(5*p5)-cos(5*p6)+cos(5*p7)-cos(5*p8);
    cos(7*p1)-cos(7*p2)+cos(7*p3)-cos(7*p4)+cos(7*p5)-cos(7*p6)+cos(7*p7)-cos(7*p8);
    cos(11*p1)-cos(11*p2)+cos(11*p3)-cos(11*p4)+cos(11*p5)-cos(11*p6)+cos(11*p7)-cos(11*p8);
    cos(13*p1)-cos(13*p2)+cos(13*p3)-cos(13*p4)+cos(13*p5)-cos(13*p6)+cos(13*p7)-cos(13*p8);
    cos(17*p1)-cos(17*p2)+cos(17*p3)-cos(17*p4)+cos(17*p5)-cos(17*p6)+cos(17*p7)-cos(17*p8);
    cos(19*p1)-cos(19*p2)+cos(19*p3)-cos(19*p4)+cos(19*p5)-cos(19*p6)+cos(19*p7)-cos(19*p8);
    cos(23*p1)-cos(23*p2)+cos(23*p3)-cos(23*p4)+cos(23*p5)-cos(23*p6)+cos(23*p7)-cos(23*p8);];
 J=[-sin(p1) sin(p2) -sin(p3) sin(p4) -sin(p5) sin(p6) -sin(p7) sin(p8);
    -5*sin(5*p1) 5*sin(5*p2) -5*sin(5*p3) 5*sin(5*p4) -5*sin(5*p5) 5*sin(5*p6) -5*sin(5*p7) 5*sin(5*p8);
    -7*sin(7*p1) 7*sin(7*p2) -7*sin(7*p3) 7*sin(7*p4) -7*sin(7*p5) 7*sin(7*p6) -7*sin(7*p7) 7*sin(7*p8);
    -11*sin(11*p1) 11*sin(11*p2) -11*sin(11*p3) 11*sin(11*p4) -11*sin(11*p5) 11*sin(11*p6) -11*sin(11*p7) 11*sin(11*p8);
    -13*sin(13*p1) 13*sin(13*p2) -13*sin(13*p3) 13*sin(13*p4) -13*sin(13*p5) 13*sin(13*p6) -13*sin(13*p7) 13*sin(13*p8);
    -17*sin(17*p1) 17*sin(17*p2) -17*sin(17*p3) 17*sin(17*p4) -17*sin(17*p5) 17*sin(17*p6) -17*sin(17*p7) 17*sin(17*p8);
    -19*sin(19*p1) 19*sin(19*p2) -19*sin(19*p3) 19*sin(19*p4) -19*sin(19*p5) 19*sin(19*p6) -19*sin(19*p7) 19*sin(19*p8);
    -23*sin(23*p1) 23*sin(23*p2) -23*sin(23*p3) 23*sin(23*p4) -23*sin(23*p5) 23*sin(23*p6) -23*sin(23*p7) 23*sin(23*p8);];
 df=inv(J)*(K-F);
 p1=p1+df(1,:);
 p2=p2+df(2,:);
 p3=p3+df(3,:);
 p4=p4+df(4,:);
 p5=p5+df(5,:);
 p6=p6+df(6,:);
 p7=p7+df(7,:);
 p8=p8+df(8,:);
 L=max(df);
 if L<=c
     break;
 end
end
m=p1*180/pi;
n=p2*180/pi;
o=p3*180/pi;
p=p4*180/pi;
q=p5*180/pi;
r=p6*180/pi;
s=p7*180/pi;
t=p8*180/pi;
p11(i)=rem(m,360);
p22(i)=rem(n,360);
p33(i)=rem(o,360);
p44(i)=rem(p,360);
p55(i)=rem(q,360);
p66(i)=rem(r,360);
p77(i)=rem(s,360);
p88(i)=rem(t,360);
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
plot(x,p88,'b');
hold off
