function y = PhiRhoInt2(n),
  global x phi rho mu1 mu2 a1 a2 l1 l2 w1 w2 beta;
  b  = beta(n);
  q1 = sqrt(4*a1^2*b^2-w1^2);
  if beta(n) + eps < w1/2/a1,
    y = trapz(x, phi(n,:) .* rho);
  else,
    y  = q1 * exp(-mu1*l1) / b^2 / 2;
  end;
endfunction;
