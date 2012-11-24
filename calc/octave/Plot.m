p = 1;
t0 = 0 / co;
t1 = 1e2 / co;
step = (t1 - t0) / 1e1;
for t=t0:step:t1,
  u = x - x;
  for n=1:length(beta),
    u(:) = u(:)' + ((- 1 * exp(-b^2 * t) * A) / NormPhi2(n) .* phi(n, :));
  endfor;
  u += 1;
  plot(x, u);
  title(sprintf('t = %.4f', t * co));
  axis([-l1 l2 -6e0 6e0]);
  print(sprintf('img/Mi%05d.png', p++));
endfor;
