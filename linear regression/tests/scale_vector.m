function scale_vector()
	fprintf('> feature scaling [vector]\n')
    X = [1; 2; 3];
    [XN, mu, sigma] = scale(X);
    EXP_XN = [-1; 0; 1];
    exp_mu = 2;
    exp_sigma = 1;
    assert(XN, EXP_XN, eps);
    assert(mu, exp_mu, eps);
    assert(sigma, exp_sigma, eps);
endfunction
