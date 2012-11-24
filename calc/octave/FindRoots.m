function ret = FindRoots(f, lo, hi, step, eps=1e-9),
  ret = [];
  for x=(lo+eps):step:hi,
    l = x; r = x + step;
    if r + eps > hi,
      break;
    endif;
    if sign(f(l)) * sign(f(r)) <= 0,
      p = BinarySearch(f, l, r);
      if length(ret) == 0 || abs(ret(end) - p) > eps,
        ret = [ret, p];
      endif;
    endif;
  endfor;
endfunction;
