function showPlot( input, output, Fs )
t = 0:1/Fs:(length(input)-1)/Fs;
t1 = 0:1/Fs:(length(output)-1)/Fs;

figure; 

subplot(211); 
plot(t, input, 'g')
title('Input')

subplot(212); 
plot(t1, output, 'r')
title('Output')