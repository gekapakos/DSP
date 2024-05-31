%%% For Hann and Hamming windows, we use M=40
%%% For Blackman window, M is 60
M=60;

%%% Window type can be Hann, Hamming or Blackman
wn = blackman(M+1);

%%% 1st way: multiply the ideal impulse response 
%%% with the appropiate window
n = linspace(0, M, M+1);
hideal1 = -0.3 * sinc(0.3*(n-(M/2)));
hideal2 = 0.7 * sinc(0.7*(n-(M/2)));

hideal = hideal1 + hideal2;
hideal = hideal';
hfir = hideal .* wn;

f1 = figure;

subplot(2, 1, 1)
stem(hfir)

%%% 2nd way: using fir1 command
subplot(2, 1, 2)
stem(fir1(M, [0.3, 0.7], wn))

%%% For the A3 question
fvtool(fir1(M, [0.3, 0.7], wn))
