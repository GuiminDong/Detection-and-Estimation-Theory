function Xmotion = myPFmotion(X, rho, deltatheta, sigmatrans, sigmarot)

ncols=size(X,2);
Xmotion = X;

for i=1:ncols
    Xmotion(3,i) = X(3,i) + deltatheta + randn(1)*sigmarot;
    Xmotion(1,i) = X(1,i) + rho*cos(Xmotion(3,i)) + randn(1)*sigmatrans;
    Xmotion(2,i) = X(2,i) + rho*sin(Xmotion(3,i)) + randn(1)*sigmatrans;
end