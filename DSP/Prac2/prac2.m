t = 0:0.01:30;
x1 = sin(2*pi*t/5);
x2 = sin(2*pi*t/7);
%subplot(3,1,1);
%plot(t,x1);
%xlabel('t');
%ylabel('x1(t)');
%title('First CT sinusoid U19EC012');
%subplot(3,1,2);
%plot(t,x2);
%xlabel('t');
%ylabel('x2(t)');
%title('Second CT sinusoid U19EC012');
x = x1+x2;
%%
subplot(3,1,1)
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Sum of two CT sinusoid U19EC012');
axis([-20 50 -3 3])
grid on;


subplot(3,1,2)
plot(t-10,x)
axis([-20 50 -3 3])
grid on;

subplot(3,1,3)
plot(t+10,x)
axis([-20 50 -3 3])
grid on;

subplot(2,1,2)
plot(-t,x)
axis([-30 30 -3 3])
grid on;
xlabel('t');
ylabel('x(-t)');
title('Time reversal of CT sinusoid U19EC012');

%%
subplot(3,1,1)
plot(t,x);
axis([-10 30 -3 3])
grid
title('Sum of CT sinusoid U19EC012')
xlabel('t')
ylabel('x(t)')


subplot(3,1,2)
plot(t/3,x);
axis([-5 15 -3 3])
grid
title('Compression of CT sinusoid U19EC012')
xlabel('t')
ylabel('x(t)')

subplot(3,1,3)
plot(t.*3,x);
axis([-5 100 -3 3])
grid
title('Expansion of CT sinusoid U19EC012')
xlabel('t')
ylabel('x(t)')