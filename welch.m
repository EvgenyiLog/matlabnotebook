[data,fs] = audioread("C:/Users/Евгений/Desktop/экспиремент 260922/260922/graph_2/2794592.wav");
[data,fs] = audioread("C:/Users/Евгений/Desktop/экспиремент 260922/480/graph_2/328179.wav");
segmentLength = 6250;
noverlap=5000;
window='hann';
%w = hann();
[pxx,f] = pwelch(data,6250,5000,6250,fs,'power','maxhold');
%plot(f,10*log10(pxx))
semilogy(f,pxx);
xlabel('Frequency (Hz)');
ylabel('PS (dB)');
grid("on");
