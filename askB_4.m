N=8192;
f1=figure;
L1=64;
n1=[-L1/2:1:L1/2-1];
x1= -40*(sinc(n1/2))+cos(pi*n1/16)+cos(pi*n1/8)+cos(pi*n1/4);
x1(L1/2+1)=80+x1(L1/2+1);
%Hamming window 
wr1=0.54-0.46*cos(2*pi*(L1/2+n1)/L1-1);
z1=wr1.*x1;
n1_1=linspace(0, pi, N);
y1=abs(fft(z1, N));
plot(n1_1, y1);

f2=figure;
L2=128;
n2=[-L2/2:1:L2/2-1];
x2= -40*(sinc(n2/2))+cos(pi*n2/16)+cos(pi*n2/8)+cos(pi*n2/4);
x2(L2/2+1)=80+x2(L2/2+1);
%Hamming window
wr2=0.54-0.46*cos(2*pi*(L2/2+n2)/L2-1);
z2=wr2.*x2;
n1_2=linspace(0, pi, N);
y2=abs(fft(z2, N));
plot(n1_2, y2);