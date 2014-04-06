function gdescent_1()
	fprintf('> gradient descent [1]\n')
	X = [1 5; 1 2; 1 4; 1 5];
	y = [1; 6; 4; 2];
	theta = [0; 0];
	alpha = 0.01;
	iterations = 1000;
	[theta, jhist] = gdescent(X, y, theta, alpha, iterations);
	exp_theta = [5.21475; -0.57335];
	assert(theta, exp_theta, eps^-2);
endfunction	
