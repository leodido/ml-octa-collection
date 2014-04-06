function scale_matrix()
	fprintf('> feature scaling [matrix]\n')
	X = [1 6; 2 4; 3 2];
    [XN, mu, sigma] = scale(X);
    EXP_XN = [-1 1; 0 0; 1 -1];
    exp_mu = [2 4];
    exp_sigma = [1 2];
    assert(XN, EXP_XN, eps);
    assert(mu, exp_mu, eps);
    assert(sigma, exp_sigma, eps);
endfunction
