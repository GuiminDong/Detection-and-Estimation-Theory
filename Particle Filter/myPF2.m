clf
figure(1)
myPFmap
hold on
myPFinitdist
plot(X(1,:), X(2,:), '.')

x0 = 25;
y0 = 9;
theta0 = pi/2;
z = myPFsensorfunction(x0, y0, theta0);

figure(2)

myPFweightfunction

X = myPFresample(X, w);
plot(x0,y0,'r+')

rho = 6;
deltatheta = pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x1 = myPFmotion([x0 y0 theta0]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x1(1), x1(2), x1(3) );

figure(3)

myPFweightfunction

X = myPFresample(X, w);
plot(x1(1),x1(2),'r+')

rho = 6;
deltatheta = -pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x2 = myPFmotion([x1(1) x1(2) x1(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x2(1), x2(2), x2(3) );

figure(4)

myPFweightfunction

X = myPFresample(X, w);
plot(x2(1),x2(2),'r+')

rho = 4;
deltatheta = 0;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x3 = myPFmotion([x2(1) x2(2) x2(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x3(1), x3(2), x3(3) );

figure(5)

myPFweightfunction

X = myPFresample(X, w);
plot(x3(1),x3(2),'r+')

rho = 8;
deltatheta = pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x4 = myPFmotion([x3(1) x3(2) x3(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x4(1), x4(2), x4(3) );

figure(6)

myPFweightfunction

X = myPFresample(X, w);
plot(x4(1),x4(2),'r+')

rho = 5;
deltatheta = pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x5 = myPFmotion([x4(1) x4(2) x4(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x5(1), x5(2), x5(3) );

figure(7)

myPFweightfunction

X = myPFresample(X, w);
plot(x5(1),x5(2),'r+')

rho = 5;
deltatheta = 0;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x6 = myPFmotion([x5(1) x5(2) x5(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x6(1), x6(2), x6(3) );

figure(8)

myPFweightfunction

X = myPFresample(X, w);
plot(x6(1),x6(2),'r+')

rho = 10;
deltatheta = -pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x7 = myPFmotion([x6(1) x6(2) x6(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x7(1), x7(2), x7(3) );

figure(9)

myPFweightfunction

X = myPFresample(X, w);
plot(x7(1),x7(2),'r+')

rho = 4;
deltatheta = pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x8 = myPFmotion([x7(1) x7(2) x7(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x8(1), x8(2), x8(3) );

figure(10)

myPFweightfunction

X = myPFresample(X, w);
plot(x8(1),x8(2),'r+')

rho = 4;
deltatheta = 0;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x9 = myPFmotion([x8(1) x8(2) x8(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x9(1), x9(2), x9(3) );

figure(11)

myPFweightfunction

X = myPFresample(X, w);
plot(x9(1),x9(2),'r+')

rho = 5;
deltatheta = pi/2;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x10 = myPFmotion([x9(1) x9(2) x9(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x10(1), x10(2), x10(3) );

figure(12)

myPFweightfunction

X = myPFresample(X, w);
plot(x10(1),x10(2),'r+')

rho = 5;
deltatheta = 0;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x11 = myPFmotion([x10(1) x10(2) x10(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x11(1), x11(2), x11(3) );

figure(13)

myPFweightfunction

X = myPFresample(X, w);
plot(x11(1),x11(2),'r+')

rho = 5;
deltatheta = 0;
sigmatrans = 0.01;
sigmarot = 0.01;

X = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot);
x12 = myPFmotion([x11(1) x11(2) x11(3)]', rho, deltatheta, 0, 0);
z = myPFsensorfunction(x12(1), x12(2), x12(3) );

figure(14)

myPFweightfunction

X = myPFresample(X, w);
plot(x12(1),x12(2),'r+')