function mubar_t = myEKFmotion(mu0, rho, deltatheta, sigmatrans, sigmarot)
mubar_t(3) = mu0(3) + deltatheta + randn(1)*sigmarot;
mubar_t(1) = mu0(1) + rho*cos(mubar_t(3)) + randn(1)*sigmatrans;
mubar_t(2) = mu0(2) + rho*sin(mubar_t(3)) + randn(1)*sigmatrans;
mubar_t=mubar_t(:);
end