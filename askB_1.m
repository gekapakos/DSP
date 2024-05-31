f1=figure;
L1=16;
n1=[-L1/2:1:L1/2-1];
%signal x[n]
x1= -40*(sinc(n1/2))+cos(pi*n1/16)+cos(pi*n1/8)+cos(pi*n1/4);
%value of x[n], when n=0, so x[0]:
x1(L1/2+1)=80+x1(L1/2+1);
stem(n1, x1);

f2=figure;
L2=32;
n2=[-L2/2:1:L2/2-1];
%signal x[n]
x2= -40*(sinc(n2/2))+cos(pi*n2/16)+cos(pi*n2/8)+cos(pi*n2/4);
%value of x[n], when n=0, so x[0]:
x2(L2/2+1)=80+x2(L2/2+1);
stem(n2, x2);

f3=figure;
L3=64;
n3=[-L3/2:1:L3/2-1];
%signal x[n]
x3= -40*(sinc(n3/2))+cos(pi*n3/16)+cos(pi*n3/8)+cos(pi*n3/4);
%value of x[n], when n=0, so x[0]:
x3(L3/2+1)=80+x3(L3/2+1);
stem(n3, x3);

f4=figure;
L4=128;
n4=[-L4/2:1:L4/2-1];
%signal x[n]
x4= -40*(sinc(n4/2))+cos(pi*n4/16)+cos(pi*n4/8)+cos(pi*n4/4);
%value of x[n], when n=0, so x[0]:
x4(L4/2+1)=80+x4(L4/2+1);
stem(n4, x4);