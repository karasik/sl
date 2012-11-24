function y = PhiRhoInt1(n),
  global x phi rho mu1 mu2 a1 a2 l1 l2 w1 w2 beta;
  b  = beta(n);
  q1 = sqrt(b^2/a1^2-mu1^2); q2 = sqrt(b^2/a2^2-mu2^2);
  A1 = A2 = sin(q1*l1);
  B1 = cos(q1*l1);
  B2 = (A2 * a2^2 * mu2 - A1 * a1^2 * mu1 + B1 * a1^2 * q1) / (a2^2 * q2);
  I1 = (-A1/mu1 - B1*q1/mu1^2 + q1 * exp(mu1*l1) / mu1^2) / (1 + q1^2 / mu1^2);
  I2 = (-A2/mu2 + Phi(n,l2)/mu2 + q2 / mu2^2 * B2) / (1 + q2^2 / mu2^2);
  y  = I1 + I2;
endfunction;
