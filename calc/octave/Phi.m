function y = Phi(n, x),
  global beta w1 a1 w2 a2;
  eps = 1e-12;
  y = x - x;
  if beta(n) + eps < w1/2/a1, 
    y(x<=0) = Phi1hh(n, x(x<=0)); 
    y(x>0) = Phi2hh(n, x(x>0));
    return;
  endif;
  if beta(n) + eps < w2/2/a2,
    y(x<=0) = Phi1h(n, x(x<=0)); 
    y(x>0) = Phi2h(n, x(x>0));
  else
    y(x<=0) = Phi1(n, x(x<=0)); 
    y(x>0) = Phi2(n, x(x>0));
  endif;
endfunction;
