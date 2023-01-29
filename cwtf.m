waveinfo('cmor');
[y,fs] = audioread("C:\Users\Евгений\PycharmProjects\pythonProject\source\Фильтрованные\4\НЧ\2.wav");
figure();
subplot(2,1,1);
plot(y(6250:12500));
grid("on");
wt=cwt(y(6250:12500),'bump');
cwtftinfo();
wscalogram('image',wt);
wscalogram('contour',wt);
wtf=cwtft(y(6250:12500),'wavelet','paul');
N = 1000;
Lb = -8;
Ub = 8;
fb = 1.5;
fc = 1;
[psi,x] = cmorwavf(-8,8,1000,1.0,0.5);
figure();
subplot(3,1,1)
plot(x,real(psi)); title('Real Part');
subplot(3,1,2)
plot(x,imag(psi)); title('Imaginary Part');
subplot(3,1,3)
plot(x,abs(psi)); title('Abs');
wavename='cmor1-0.5';
wcf=centfrq(wavename); %Center Frequency of Wavelet
scal=fs*wcf./f;%Using frequency conversion scales
figure();
t=linspace(0,2,6251);
sc=wscalogram('contour',coefs,scal);
sc=wscalogram('image',coefs,scal);
F = scal2frq(scal,wavename,0.001);