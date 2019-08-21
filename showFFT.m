function showFFT( input, output, Fs )

figure; subplot(211); 
[y, x] = getFFT(input, Fs);
plot(x, y, 'g')
title('Input')
subplot(212); 
[y, x] = getFFT(output, Fs);
plot(x, y, 'r')
title('Output')
figure
spectrogram(x)
title('Input')
figure
spectrogram(y)
title('Output')