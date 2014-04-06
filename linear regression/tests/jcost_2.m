function jcost_2()
	fprintf('> linear regression cost function [2]\n')
	X = [1 2; 1 3; 1 4; 1 5];
	y = [7; 6; 5; 4];
	theta = [0.1; 0.2];
	j = jcost(X, y, theta);
	exp_j = 11.9450;
	assert(j, exp_j, eps^-2);
endfunction
