function y = Phi2h(n, x);
  global a1 a2 w1 w2 l1 l2 mu1 mu2 beta;
  b = beta(n);
  q1 = sqrt(b^2/a1^2-mu1^2); q2 = sqrt(-b^2/a2^2+mu2^2);
  A1 = A2 = sinh(q1*l1);
  B1 = cosh(q1 * l1);
  B2 = (A2 * a2^2 * mu2 - A1 * a1^2 * mu1 + B1 * a1^2 * q1) / (a2^2 * q2);
  y = exp(-mu2*x) .* (A2 * cos(q2*x) .+ B2 * sin(q2*x));
endfunction;
