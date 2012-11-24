function y = T(n, t),
  global beta Omega l1 a1;
  b = beta(n);
  A = PhiRhoInt2(n);
  % A = 1;
  y = - 1 * exp(-b^2 * t) * A;
  % y = (-Omega*A)*(b^2*sin(Omega*t)-Omega*cos(Omega*t))/(Omega^2+b^4) - Omega^2*A*exp(-b^2*t)/(Omega^2+b^4);
  %A = a1^2 * Rho(-l1) * dPhi1(n, -l1) * 1;
  %y = A / b^2 * (1 - exp(-b^2 * t));

endfunction;
