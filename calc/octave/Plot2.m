p = 1;
t0 = 0 / co;
t1 = 1e0 / co;
step = (t1 - t0) / 1e1;
% k1 = exp(-mu1*l1)/2;
for t=t0:step:t1,
  u = x - x;
  % u = u + 1;
  v = x - x;
  for n=1:length(beta),
    % q1 = sqrt(4*beta(n)^2*a1^2-w1^2); 
    % su = k1 * q1 / beta(n)^2 .* phi(n, :) / NormPhi2(n);
    su = PhiRhoInt2(n) / NormPhi20(n) .* phi(n, :);
    u(:) = u(:)' + su;
    v(:) = v(:)' - su * exp(-beta(n)^2 * t);
  endfor;
  % u += 5;
  % u += (1 - cos(Omega*t));
  plot(x, u+v, 'r');
  title(sprintf('t = %.4f', t * co));
  axis([-l1 l2 -2.5e0 2.5e0]);
  print(sprintf('img/2_%05d.png', p++));
endfor;
