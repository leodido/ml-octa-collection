function scale_square_matrix()
	fprintf('> feature scaling [square matrix]\n');
	X = [8 1 6; 3 5 7; 4 9 2];
    [XN, mu, sigma] = scale(X);
    EXP_XN = [1.13389 -1 0.37796; -0.75593 0 0.75593; -0.37796 1 -1.13389];
    exp_mu = [5 5 5];
    exp_sigma = [2.6458 4 2.6458];
    assert(XN, EXP_XN, eps^-2);
    assert(mu, exp_mu, eps^-2);
    assert(sigma, exp_sigma, eps^-2);
endfunction
