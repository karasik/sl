function y = Rho(x),
  global mu1 mu2 a1 a2;
  if x <= 0,
    y = exp(2*mu1*x);
  else,
    y = exp(2*mu2*x);
  endif;
endfunction
