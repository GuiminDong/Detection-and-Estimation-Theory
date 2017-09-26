clear all
clf
figure(1)
myEKFmap
hold on

X=[5;10;pi];
plot(X(1),X(2),'r+')
Sigma0=eye(3);
R=Sigma0;
Q=eye(5);
Sigma_t0=Sigma0;
mu_t0=X;
%mu_t0=[26.5;9.54;pi/2];

figure(2)
myEKFmap
hold on
rho = 6;
deltatheta = pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(3)
myEKFmap
hold on
rho = 6;
deltatheta = -pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(4)
myEKFmap
hold on
rho = 4;
deltatheta = 0;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(5)
myEKFmap
hold on
rho = 8;
deltatheta = pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(6)
myEKFmap
hold on
rho = 5;
deltatheta = pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(7)
myEKFmap
hold on
rho = 5;
deltatheta = 0;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(8)
myEKFmap
hold on
rho = 10;
deltatheta = -pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(9)
myEKFmap
hold on
rho = 4;
deltatheta = pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(10)
myEKFmap
hold on
rho = 4;
deltatheta = 0;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(11)
myEKFmap
hold on
rho = 5;
deltatheta = pi/2;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(12)
myEKFmap
hold on
rho = 5;
deltatheta = 0;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;

figure(13)
myEKFmap
hold on
rho = 5;
deltatheta = 0;

mubar_t = myEKFmotion(mu_t0, rho, deltatheta, 0.01, 0.01);
X = myEKFmotion(X, rho, deltatheta, 0, 0);
plot(X(1),X(2),'r+',mubar_t(1),mubar_t(2),'bo')

G_t=myG(rho,deltatheta,mu_t0);
Sigmabar_t=G_t*Sigma_t0*G_t'+R;

H_t=myH(mubar_t);
K_t=Sigmabar_t*H_t'/(H_t*Sigmabar_t*H_t'+Q);

zt = myEKFsensorfunction(X(1), X(2), X(3));
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
mu_t=mubar_t+K_t*(zt-z);
Sigma_t=(eye(3)-K_t*H_t)*Sigmabar_t;

Sigma_t0=Sigma_t;
mu_t0=mu_t;