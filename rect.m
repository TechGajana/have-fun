Fs = 1000; 
N = 51;   
Fc_low = 100; 
Fc_high = 300; 
Fc1_band = 200; 
Fc2_band = 400; 
Fc1_stop = 200;
Fc2_stop = 400; 
% Low-pass filter
h_low = fir1(N-1, Fc_low/(Fs/2), 'low', rectwin(N));
freqz(h_low, 1, 1024, Fs);
title('Low-pass FIR Filter');
% High-pass filter
h_high = fir1(N-1, Fc_high/(Fs/2), 'high', rectwin(N));
figure;
freqz(h_high, 1, 1024, Fs);
title('High-pass FIR Filter');
% Band-pass filter
h_band = fir1(N-1, [Fc1_band/(Fs/2), Fc2_band/(Fs/2)], 'bandpass', rectwin(N));
figure;
freqz(h_band, 1, 1024, Fs);
title('Band-pass FIR Filter');
% Band-stop filter
h_stop = fir1(N-1, [Fc1_stop/(Fs/2), Fc2_stop/(Fs/2)], 'stop', rectwin(N));
figure;
freqz(h_stop, 1, 1024, Fs);
title('Band-stop FIR Filter');
