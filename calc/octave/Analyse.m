 u = x - x;
 for n=1:length(beta),
   u(:) = u(:)' + (PhiRhoInt2(n) / NormPhi20(n) .* phi(n, :));
 endfor;
 plot(x, u);


% mu1 = w1/2/a1; mu2 = w2/2/a2;
% b = [mu1+1e-9:1e-2:mu2-1e-9];
% q1 = sqrt(+b.^2/a1^2-w1^2/4/a1^4);
% q2 = sqrt(-b.^2/a2^2+w2^2/4/a2^4);
% y1 = 1/2 .* (w2.-w1) .+ q1 .* a1^2 ./ tan(q1.*l1);
% y2 = - q2 .* a2 .^ 2 .* (q2 .* tanh (q2*l2) .- mu2) ./ (q2 .- a2 .* tanh (q2.*l2));
% plot(b, y1, 'g', b, y2, 'b');
