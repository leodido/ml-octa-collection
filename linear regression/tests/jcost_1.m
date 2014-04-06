function jcost_1()
	fprintf('> linear regression cost function [1]\n')
	X = [1 2 3; 1 3 4; 1 4 5; 1 5 6];
	y = [7; 6; 5; 4];
	theta = [0.1; 0.2; 0.3];
	j = jcost(X, y, theta);
	exp_j = 7.0175;
	assert(j, exp_j, eps^-2);
endfunction