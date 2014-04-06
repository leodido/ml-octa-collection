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


    %x = featureNormalize([1 2 3 1;6 4 2 0;11 3 3 9;4 9 8 8]');
    %a = [
    %  -0.78335   1.16190   1.09141  -1.46571;
    %   0.26112   0.38730  -0.84887   0.78923;
    %   1.30558  -0.38730  -0.84887   0.33824;
    %  -0.78335  -1.16190   0.60634   0.33824];
    %assert(x, a, epsilon);
endfunction
