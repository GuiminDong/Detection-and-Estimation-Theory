function G_t=myG(rho,deltatheta,mu_t0)
G_t=[1 0 -rho*sin(mu_t0(3) + deltatheta)
     0 1 rho*cos(mu_t0(3) + deltatheta)
     0 0 1];
end