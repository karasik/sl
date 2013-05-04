p = 1;
t0 = 0 / co;
t1 = (4*pi) / co;
step = (t1 - t0) / 2e2;
for t=t0:step:(t1-step),
  u = x - x;
  for n=1:length(beta),
    u(:) = u(:)' + (Theta(n,t) / NormPhi20(n) .* phi(n, :));
  endfor;
  u += 1 - cos(Omega*t);
  h = plot(x, u);
  set(h, 'linewidth', 2);
  title(sprintf('t = %.4f', t * co));
  axis([-l1 l2 -0.1e0 2.1e0]);
  print(sprintf('img/animation-two-%0d.png', p++));
endfor;
