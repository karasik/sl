function y = Phi1h(n, x);
  global a1 a2 w1 w2 l1 l2 mu1 mu2 beta;
  b = beta(n);
  q1 = sqrt(+b^2/a1^2-mu1^2); 
  A1 = sinh(q1*l1);
  B1 = cosh(q1*l1);
  y = exp(-mu1*x) .* (A1 * cosh(q1*x) .+ B1 * sinh(q1*x));
endfunction;
