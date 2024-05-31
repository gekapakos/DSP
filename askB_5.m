%This part is the same as B4.
f2=figure;
L2=128;
n2=[-L2/2:1:L2/2-1];
x2= -40*(sinc(n2/2))+cos(pi*n2/16)+cos(pi*n2/8)+cos(pi*n2/4);
x2(L2/2+1)=80+x2(L2/2+1);
wr2=0.54-0.46*cos(2*pi*(L2/2+n2)/L2-1);
z2=wr2.*x2;
n1_2=linspace(0, pi, N);
y2=abs(fft(z2, N));

%We use the hann window from the ask1.
M=40;
wn = hann(M+1);

%Plot the result of the multiplication between the signals.
b2=fir1(M, [0.3, 0.7], wn).*y2';
plot(n1_2, b2);