function x = BinarySearch(f, l, r, eps = 1e-9),
  assert(l <= r, 'BinarySearch: l > r');
  assert(sign(f(l)) * sign(f(r)) <= 0, 'BinarySearch: f(l)*f(r) > 0');
  sl = sign(f(l));
  while (r - l > eps),
    w = (r + l) / 2;
    if sl * sign(f(w)) >= 0, l = w; 
    else, r = w; endif;
  endwhile;
  x = l;
endfunction;
