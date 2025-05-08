x = [1, 2, 3, 4]; 
N = length(x);
X = zeros(1, N);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1) * exp(-1i * 2 * pi * k * n / N);
    end
end
disp('DFT of the sequence:');
disp(X);
subplot(2,1,1);
stem(0:N-1, abs(X));
title('Magnitude of DFT');
xlabel('k');
ylabel('Magnitude');
disp('magnitude response');
disp(abs(X));
phase_radians = angle(X);
phase_degrees = rad2deg(phase_radians);
subplot(2,1,2);
stem(0:N-1, phase_degrees);
title('Phase of DFT');
xlabel('k');
ylabel('Phase (radians)');
disp('phase response');
disp(phase_degrees);

