function y = NormPhi2(n),
  global x phi rho mu1 mu2 a1 a2 l1 l2 w1 w2 beta;
  b = beta(n);
  q1 = sqrt(b^2/a1^2-mu1^2); q2 = sqrt(b^2/a2^2-mu2^2);
  y = -((sin(l1*q1)^2*sin(2*l2*q2)-2*l2*sin(l1*q1)^2*q2)*w2^2+((4*l2*sin(l1*q1)^2*q2-2*sin(l1*q1)^2*sin(2*l2*q2))*w1+4*a1^2*q1*cos(l1*q1)*sin(l1*q1)*sin(2*l2*q2)+8*a2^2*sin(l1*q1)^2*q2*cos(l2*q2)^2-8*a1^2*l2*q1*cos(l1*q1)*sin(l1*q1)*q2)*w2+(sin(l1*q1)^2*sin(2*l2*q2)-2*l2*sin(l1*q1)^2*q2)*w1^2+(-4*a1^2*q1*cos(l1*q1)*sin(l1*q1)*sin(2*l2*q2)-8*a2^2*sin(l1*q1)^2*q2*cos(l2*q2)^2+8*a1^2*l2*q1*cos(l1*q1)*sin(l1*q1)*q2)*w1+(4*a1^4*q1^2*cos(l1*q1)^2-4*a2^4*sin(l1*q1)^2*q2^2)*sin(2*l2*q2)+16*a1^2*a2^2*q1*cos(l1*q1)*sin(l1*q1)*q2*cos(l2*q2)^2-8*a2^4*l2*sin(l1*q1)^2*q2^3-8*a1^4*l2*q1^2*cos(l1*q1)^2*q2)/(16*a2^4*q2^3)+(sin(l1*q1)^2*w2-sin(l1*q1)^2*w1+2*a1^2*q1*cos(l1*q1)*sin(l1*q1))/(2*a2^2*q2^2)-(sin(2*l1*q1)-2*l1*q1)/(4*q1);
endfunction;
