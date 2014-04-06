function hydist_1()
	fprintf('> hypothesis vs class distance [1]\n')
	X = [1 2 3; 1 3 4; 1 4 5; 1 5 6];
	y = [7; 6; 5; 4];
	theta = [0.1; 0.2; 0.3];
	exp_dist = [-5.6; -4.1; -2.6; -1.1];
	assert(hydist(X, y, theta), exp_dist, eps^-2);
endfunction