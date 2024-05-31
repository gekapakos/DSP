f1=figure;
L1=16;
n1=[-L1/2:1:L1/2-1];
x1= -40*(sinc(n1/2))+cos(pi*n1/16)+cos(pi*n1/8)+cos(pi*n1/4);
x1(L1/2+1)=80+x1(L1/2+1);
z1=x1';
%dft transform of the signal
y1=abs(fft(z1, L1));
stem([0:1:15], y1);

f2=figure;
L2=32;
n2=[-L2/2:1:L2/2-1];
x2= -40*(sinc(n2/2))+cos(pi*n2/16)+cos(pi*n2/8)+cos(pi*n2/4);
x2(L2/2+1)=80+x2(L2/2+1);
z2= x2';
%dft transform of the signal
y2=abs(fft(z2, L2));
stem([0:1:31], y2);

f3=figure;
L3=64;
n3=[-L3/2:1:L3/2-1];
x3= -40*(sinc(n3/2))+cos(pi*n3/16)+cos(pi*n3/8)+cos(pi*n3/4);
x3(L3/2+1)=80+x3(L3/2+1);
z3= x3';
%dft transform of the signal
y3=abs(fft(z3, L3));
stem([0:1:63], y3);

f4=figure;
L4=128;
n4=[-L4/2:1:L4/2-1];
x4= -40*(sinc(n4/2))+cos(pi*n4/16)+cos(pi*n4/8)+cos(pi*n4/4);
x4(L4/2+1)=80+x4(L4/2+1);
z4= x4';
%dft transform of the signal
y4=abs(fft(z4, L4));
stem([0:1:127], y4);