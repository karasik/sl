function y = NormPhi20(n),
  global x phi rho mu1 mu2 a1 a2 l1 l2 w1 w2 beta;
  eps = 1e-12;
  b = beta(n);
  q1 = sqrt(b^2/a1^2-mu1^2); q2 = sqrt(b^2/a2^2-mu2^2);
  A1 = A2 = sin(q1*l1);
  B1 = cos(q1 * l1);
  B2 = (A2 * a2^2 * mu2 - A1 * a1^2 * mu1 + B1 * a1^2 * q1) / (a2^2 * q2);
  % y = 1/2*l1 + sin(2*q1*l1)/4/q1 * (A1^2 - B1^2) - A1*B1*sin(q1*l1)^2/q1 + l2/2 * (A2^2 + B2^2) + 1/4/q2 * (A2^2-B2^2) * sin(2*q2*l2) + A2*B2*sin(q2*l2)^2/q2;
 

  if beta(n) + eps < w1/2/a1,
    y = trapz(x, rho .* phi(n, :) .* phi(n, :));
  else,
    y = abs (1/2*l1 - sin(2*q1*l1)/4/q1 + l2/2 * (A2^2 + B2^2) + 1/4/q2 * (A2^2-B2^2) * sin(2*q2*l2) + A2*B2*sin(q2*l2)^2/q2);
  end;


endfunction;
