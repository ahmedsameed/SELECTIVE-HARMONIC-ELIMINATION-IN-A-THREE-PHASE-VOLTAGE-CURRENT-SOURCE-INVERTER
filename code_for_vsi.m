clc;
clear all;
close all;
c=0.0001;
D=input('enter modulation index: \n');
p11=3;p22=14;p33=18;p44=27;p55=33;p66=42;p77=48;p88=60;
p1=p11*pi/180;p2=p22*pi/180;p3=p33*pi/180;p4=p44*pi/180;p5=p55*pi/180;p6=p66*pi/180;p7=p77*pi/180;p8=p88*pi/180;
K=[(1-D*pi/4)*0.5;0.5;0.5;0.5;0.5;0.5;0.5;0.5;];
for i=1:1:100
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
 df=(J)\(K-F);
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
M=D;m=p1*180/pi;n=p2*180/pi;o=p3*180/pi;p=p4*180/pi;q=p5*180/pi;r=p6*180/pi;s=p7*180/pi;t=p8*180/pi;
p11=rem(m,360);p22=rem(n,360);p33=rem(o,360);p44=rem(p,360);p55=rem(q,360);p66=rem(r,360);p77=rem(s,360);p88=rem(t,360);
fprintf('p11=%f\np22=%f\np33=%f\np44=%f\np55=%f\np66=%f\np77=%f\np88=%f\nM=%f\n',p11,p22,p33,p44,p55,p66,p77,p88,M);