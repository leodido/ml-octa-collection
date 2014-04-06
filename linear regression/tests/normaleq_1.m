function normaleq_1()
	fprintf('> normal equation\n')
	X = [1 0; 0 2];
	y = [1; 1];
	exp_theta = [1; 0.5];
	assert(normaleq(X, y), exp_theta, eps^-2);
endfunction
