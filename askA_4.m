nw1a=0.2;
nw1b=0.4;
nw2a=0.6;
nw2b=0.8;

NN=8192;
NN0=1;
NN1=ceil(NN/2*nw1a);
NN2=ceil(NN/2*nw1b);
NN3=ceil(NN/2*nw2a);
NN4=ceil(NN/2*nw2b);
NN5=NN/2;

hhc = fir1(M, [0.3, 0.7], wn);

Hc=abs(fft(hhc, NN));
Ec=[Hc(NN0:NN1), diag(zeros(NN2-NN1))', abs(1-Hc(NN2:NN3)), diag(zeros(NN4-NN3))', Hc(NN4:NN5)];
figure(11); plot([0:1/(NN/2):1-1/(NN/2)], Hc(1:NN/2));
figure(12); plot([0:1/(NN/2):1-1/(NN/2)], Hc(1:NN/2));
mc = max(Ec)-20*log10(mc);