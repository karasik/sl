function y = Theta(n, t),
  global x phi rho mu1 mu2 a1 a2 l1 l2 w1 w2 beta Omega;
  b  = beta(n);
  A = - Omega * PhiRhoInt(n);
  y = A * (b^2 * sin(Omega*t) - Omega*cos(Omega*t) + Omega*exp(-b^2*t))/(Omega^2+b^4);
endfunction;
