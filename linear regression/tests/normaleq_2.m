function normaleq_2()
	fprintf('> normal equation [non invertibility]\n')
	X = [1 2; 2 4; 4 8];
	y = [1; 1; 2];
	exp_theta = [0.10476; 0.20952];
	assert(normaleq(X, y), exp_theta, eps^-2);
endfunction
