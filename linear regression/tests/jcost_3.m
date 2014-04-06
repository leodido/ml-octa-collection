function jcost_3()
	fprintf('> linear regression cost function [3]\n')
	X = [2 1 3; 7 1 9; 1 8 1; 3 7 4];
	y = [2; 5; 5; 6];
	theta = [0.3816; 0.7655; 0.7952 ];
	j = jcost(X, y, theta);
	exp_j = 6.7273;
	assert(j, exp_j, eps^-2);
endfunction