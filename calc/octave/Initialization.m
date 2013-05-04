% l1=1; l2=19; a1=sqrt(1e-3); a2=sqrt(1e-4); w1=7.8e-4; w2=w1*0.8; Omega=1;
% Animation 1
% l1=3; l2=5; a1=2; a2=4; w1=0.1; w2=w1*0.8; Omega=1; 
% Animation 2
 l1=3; l2=1; a1=4; a2=1; w1=1; w2=w1*0.8; Omega=1;
co = 1;
% co = (l1+l2) / a1^2;
% a1=1; a2=0.31623; l1=0.050000; l2=0.95000; w1=15.600; w2=12.480; Omega=2*pi/5*co;
mu1 = w1/2/a1^2; mu2 = w2/2/a2^2;

beta0 = FindRoots(@BetaEq0, 0, w1/2/a1, 1e-5);
% beta0 = FindRoots(@BetaEq0, 0, 1e-3, 1e-7);
beta1 = FindRoots(@BetaEq1, w1/2/a1, w2/2/a2, 1e-1);
%beta0 = [1e-7];
%beta1 = [];
beta = FindRoots(@BetaEq, w2/2/a2, 200, 1e-1);

beta = [beta0, beta1, beta];

save beta.mat beta;
load beta.mat;
x = [-l1:1e-3:l2];
phi = zeros(length(beta), length(x));
for i=1:length(beta),
  phi(i, :) = Phi(i, x);
end
