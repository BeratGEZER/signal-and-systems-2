% ELM264 Ýþaretler ve Sistemler Proje 2

% 1-A
zaman = -2:0.01:2; % Zaman vektörü
x = @(t) (1 - abs(t)) .* (abs(t) < 1); % x(t) iþaretinin tanýmý
x_t = x(zaman); % x(t) iþaretinin hesaplanmasý

figure;
plot(zaman, x_t, 'LineWidth', 2);
xlabel('Zaman (t)'); % x ekseni etiketi
ylabel('x(t)'); % y ekseni etiketi
title('x(t) = tri(t) iþaretinin grafiði'); % Grafik baþlýðý
grid on; % Izgara açma

% 1-B
frekans = -5:0.01:5; % Frekans vektörü
X_f = (sin(pi * frekans) ./ (pi * frekans)).^2; % x(t) iþaretinin Fourier transformu (sinc fonksiyonunun karesi)
X_f(frekans == 0) = 1; % f = 0 noktasýndaki deðeri manuel olarak düzeltme

genlik_spektrumu = abs(X_f); % Genlik spektrumu
faz_spektrumu = angle(X_f); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 1-C
frekans = -5:0.01:5; % Frekans vektörü
X_f = (sin(pi * frekans) ./ (pi * frekans)).^2; % x(t) iþaretinin Fourier transformu (sinc fonksiyonunun karesi)
X_f(frekans == 0) = 1; % f = 0 noktasýndaki deðeri manuel olarak düzeltme

zaman_kaydirma = 5; % Zaman kaydýrma faktörü
Y_f = X_f .* exp(-1j * 2 * pi * frekans * zaman_kaydirma); % y(t) iþaretinin Fourier transformu

genlik_spektrumu = abs(Y_f); % Genlik spektrumu
faz_spektrumu = angle(Y_f); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 1-D
frekans = -5e6:1e3:5e6; % Frekans vektörü
X_f = (sin(pi * frekans / 1e6) ./ (pi * frekans / 1e6)).^2; % x(t) iþaretinin Fourier transformu (sinc fonksiyonunun karesi)
X_f(frekans == 0) = 1; % f = 0 noktasýndaki deðeri manuel olarak düzeltme

frekans_kaydirma = 927e3; % Frekans kaydýrma faktörü
Y_f = 0.5 * (interp1(frekans, X_f, frekans - frekans_kaydirma, 'linear', 0) + interp1(frekans, X_f, frekans + frekans_kaydirma, 'linear', 0)); % y(t) iþaretinin Fourier transformu

genlik_spektrumu = abs(Y_f); % Genlik spektrumu
faz_spektrumu = angle(Y_f); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 1-E
frekans = -15:0.01:15; % Frekans vektörü (ölçekleme nedeniyle geniþletilmiþ)
X_f = (sin(pi * frekans / 3) ./ (pi * frekans / 3)).^2; % x(t) iþaretinin Fourier transformu (sinc fonksiyonunun karesi)
X_f(frekans == 0) = 1; % f = 0 noktasýndaki deðeri manuel olarak düzeltme

genlik_spektrumu = abs(X_f); % Genlik spektrumu
faz_spektrumu = angle(X_f); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 1-F
frekans = -5:0.01:5; % Frekans vektörü
H_f = sinc(frekans); % LTI sistemin frekans cevabý

genlik_spektrumu = abs(H_f); % Genlik spektrumu
faz_spektrumu = zeros(size(H_f)); % Faz spektrumu (manuel olarak sýfýrlama)

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('LTI Sistemin Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('LTI Sistemin Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-A
frekans = -0.5:0.01:0.5; % Frekans vektörü (normalize edilmiþ frekans aralýðý)
X = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)); % Fourier dönüþümünün hesaplanmasý

genlik_spektrumu = abs(X); % Genlik spektrumu
faz_spektrumu = angle(X); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-B
frekans = -0.5:0.01:0.5; % Frekans vektörü (normalize edilmiþ frekans aralýðý)
X = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)); % X(f)'nin hesaplanmasý
Y = X .* exp(-1j * 2 * pi * frekans * 5); % Y(f)'nin hesaplanmasý (X(f) * exp(-j * 2 * pi * f * 5))

genlik_spektrumu_Y = abs(Y); % Genlik spektrumu
faz_spektrumu_Y = angle(Y); % Faz spektrumu

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('y[n] = x[n - 5] Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('y[n] = x[n - 5] Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-C
frekans = -0.5:0.01:0.5; % Frekans vektörü (normalize edilmiþ frekans aralýðý)
X = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)); % X(f)'nin hesaplanmasý
Y = (0.8 * exp(-1j * 2 * pi * frekans)) ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)).^2; % Y(f)'nin hesaplanmasý

genlik_spektrumu_Y = abs(Y); % Genlik spektrumu
faz_spektrumu_Y = unwrap(angle(Y)); % Faz spektrumu (unwrap ile fazdaki süreksizlikleri önleme)

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('y[n] = n x[n] Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('y[n] = n x[n] Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-D
frekans = -0.5:0.01:0.5; % Frekans vektörü (normalize edilmiþ frekans aralýðý)
X = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)); % X(f)'nin hesaplanmasý
Y = 1 ./ (1 - 0.8 * exp(1j * 2 * pi * frekans)); % Y(f)'nin hesaplanmasý (X(-f))

genlik_spektrumu_Y = abs(Y); % Genlik spektrumu
faz_spektrumu_Y = unwrap(angle(Y)); % Faz spektrumu (unwrap ile fazdaki süreksizlikleri önleme)

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('y[n] = x[-n] Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('y[n] = x[-n] Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-E
frekans = -0.5:0.01:0.5; % Frekans vektörü (normalize edilmiþ frekans aralýðý)
X = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * frekans)); % X(f)'nin hesaplanmasý
f_shift1 = frekans - 0.05; % Frekans kaydýrmalarý
f_shift2 = frekans + 0.05;

X_shift1 = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * f_shift1)); % X(f) kaydýrýlmýþ frekanslarda hesaplanmasý
X_shift2 = 1 ./ (1 - 0.8 * exp(-1j * 2 * pi * f_shift2));

Y = 0.5 * (X_shift1 + X_shift2); % Y(f)'nin hesaplanmasý

genlik_spektrumu_Y = abs(Y); % Genlik spektrumu
faz_spektrumu_Y = unwrap(angle(Y)); % Faz spektrumu (unwrap ile fazdaki süreksizlikleri önleme)

figure;
subplot(2, 1, 1);
plot(frekans, genlik_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('y[n] = x[n] \cos(0.1 \pi n) Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(2, 1, 2);
plot(frekans, faz_spektrumu_Y, 'LineWidth', 2);
xlabel('Frekans (cycles/sample)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('y[n] = x[n] \cos(0.1 \pi n) Faz Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

% 2-F
frekans = -0.5:0.01:0.5; % Frekans vektörü
H = exp(-1j * 2 * pi * frekans * 5); % Frekans cevabýnýn hesaplanmasý

genlik_spektrumu_H = abs(H); % Genlik spektrumu
faz_spektrumu_H = angle(H); % Faz spektrumu

real_H = real(H); % Arctan ile faz spektrumunun hesaplanmasý
imag_H = imag(H);
faz_spektrumu_H_arctan = atan2(imag_H, real_H);

figure;
subplot(3, 1, 1);
plot(frekans, genlik_spektrumu_H, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Genlik'); % y ekseni etiketi
title('LTI Sistem Genlik Spektrumu'); % Grafik baþlýðý
grid on; % Izgara açma

subplot(3, 1, 3);
plot(frekans, faz_spektrumu_H_arctan, 'LineWidth', 2);
xlabel('Frekans (Hz)'); % x ekseni etiketi
ylabel('Faz (radyan)'); % y ekseni etiketi
title('LTI Sistem Faz Spektrumu (arctan ile)'); % Grafik baþlýðý
grid on;
