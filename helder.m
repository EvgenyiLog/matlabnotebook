% [x,fs]=audioread("D:\020622\Фильтрованные\14\НЧ\1.wav");
[data,annotations] = edfread("C:\Users\Евгений\Downloads\crit_pack\edf\01_ГУСА.edf");

info = edfinfo("C:\Users\Евгений\Downloads\crit_pack\edf\01_ГУСА.edf");
fs = info.NumSamples/seconds(info.DataRecordDuration);
recnum = 1;
signum = 1;
t = (0:info.NumSamples(signum)-1)/fs(signum);
x = data.(signum){recnum};

fs=fs(2,1);

figure();
plot(t,x);
grid();
%sound(x,fs);

[localhexp,wt,wavscales]=wtmm(x,'ScalingExponent','local');
figure();
plot(localhexp);
grid();







