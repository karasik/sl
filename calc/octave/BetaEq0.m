function y = BetaEq0(b),
  global a1 a2 w1 w2 l1 l2 mu1 mu2;
  q1 = sqrt(-b^2/a1^2+mu1^2); q2 = sqrt(-b^2/a2^2+mu2^2);
  y = -sinh(q1*l1)*((a2^2*mu2-a1^2*mu1)*(q2*cosh(q2*l2)-sinh(q2*l2)*mu2)+a2^2*q2*(q2*sinh(q2*l2)-cosh(q2*l2)*mu2))-a1^2*q1*cosh(q1*l1)*(q2*cosh(q2*l2)-sinh(q2*l2)*mu2);
endfunction;
