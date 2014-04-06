function gdescent_3()
	fprintf('> gradient descent [3]\n')
	X = [3 5 6; 1 2 3; 9 4 2];
	y = [1; 6; 4];
	theta = [0; 0; 1];
	alpha = 0.01;
	iterations = 1000;
	[theta, jhist] = gdescent(X, y, theta, alpha, iterations);
	exp_theta = [1.3169; -3.2949; 2.5524];
	assert(theta, exp_theta, eps^-2);
endfunction	
