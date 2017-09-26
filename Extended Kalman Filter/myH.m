function H_t=myH(mubar_t)
z = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3));
z1 = myEKFsensorfunction(mubar_t(1)+0.01, mubar_t(2), mubar_t(3));
z2 = myEKFsensorfunction(mubar_t(1), mubar_t(2)+0.01, mubar_t(3));
z3 = myEKFsensorfunction(mubar_t(1), mubar_t(2), mubar_t(3)+0.01);
H1=(z1-z)/0.01;
H2=(z2-z)/0.01;
H3=(z3-z)/0.01;
H_t=[H1 H2 H3];
end