load 'wetransfer-515c25/2_two_micro_localization/Data/A_little_echo_#1_0deg.mat';
x1 = audio_data(:,1);
x2 = audio_data(:,2);
d=2;  % 2m?
c=299792458;
f=8000;
sx1=stft(x1);
sx2=stft(x2);
L=size(sx2,1);
% spectrogram(x1,'yaxis');

theta = phdiffmeasure(x1,x2);
phi = (L/(2*pi*f)) * theta;
angle = asin(phi *c / d);
