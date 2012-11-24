p = 1;
t0 = 0 / co;
t1 = 1e2 / co;
step = (t1 - t0) / 1e1;
k1 = exp(-mu1*l1)/2;
for t=t0:step:t1,
  u = x - x;
  v = x - x;
  for n=1:length(beta),
    q1 = sqrt(4*beta(n)^2*a1^2-w1^2); 
    su = k1 * q1 / beta(n)^2 .* phi(n, :) / NormPhi2(n);
    u(:) = u(:)' + su;
    v(:) = v(:)' + su * exp(-beta(n)^2 * t);
  endfor;
  % u += 5;
  % u += (1 - cos(Omega*t));
  plot(x, u, 'g', x, -v, 'b', x, u-v, 'r');
  title(sprintf('t = %.4f', t * co));
  axis([-l1 l2 -2e0 2e0]);
  print(sprintf('img/1_%05d.png', p++));
endfor;
