function scale_equals()
	fprintf('> feature scaling [equals values]\n')
    X = [1 2; 1 3; 1 4];
    [XN, mu, sigma] = scale(X);
    EXP_XN = [NaN -1; NaN 0; NaN 1];
    exp_mu = [unique(X(:, 1)) 3];
    exp_sigma = [0 1];
    assert(XN, EXP_XN);
    assert(mu, exp_mu);
    assert(sigma, exp_sigma);
endfunction
