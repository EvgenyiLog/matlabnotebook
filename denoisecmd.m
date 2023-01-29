[data,annotations] = edfread("C:/Users/Евгений/Downloads/crit_pack/edf/01_ГУСА.edf")
[data,Fs] = audioread("C:/Users/Евгений/Desktop/экспиремент 260922/260922/graph_2/2794592.wav");
sigden = cmddenoise(data,'db1',4);
plot(data);
hold on;
plot(sigden,'r','linewidth',2);
axis tight;
grid("on");