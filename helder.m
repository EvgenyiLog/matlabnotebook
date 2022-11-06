[x,fs]=audioread("D:\020622\Фильтрованные\14\НЧ\1.wav");
t=linspace(0,length(x)/fs,length(x));
figure();
plot(t,x);
grid();
sound(x,fs);
time_interval=10;
sample_interval = time_interval * fs;
sample_start=0;
sample_finish = sample_interval;
start_sample=1;
finish_sample=sample_interval;
%%X = zeros(length(x));
i=1;
while sampl_finish <= length(x)
    hexp = wtmm(x(start_sample:finish_sample));
    sample_start=sample_finish;
    sampl_finish=sample_start+sample_finish;
    X(i)=hexp;
    i=i+1;    
end

t=linspace(0,length(x)/fs,length(X));
figure();
plot(t,X);
grid();

