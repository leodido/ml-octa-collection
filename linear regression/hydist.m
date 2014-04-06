function dist = hydist(X, y, theta)
	% -----------------------------------------------------------------------------
% Usage: dist = hydist (X, y, theta)
% -----------------------------------------------------------------------------
% Parameters:
% X     : double, size(m, n)
% y     : double, size(m, 1)
% theta : double, size(n, 1)
% -----------------------------------------------------------------------------
% Return values:
% dist  : double, size(n, 1)
% -----------------------------------------------------------------------------
% Distance between hypothesis and class for linear regression.
% Return the distance between the hypothesis output value and the class
% using theta as the parameter for linear regression to fit
% the data point in X and y.
% -----------------------------------------------------------------------------
% Keywords: distance, hypothesis, linear regression
% -----------------------------------------------------------------------------
% Examples:
% X = [1 2; 1 3; 1 4; 1 5];
% y = [7; 6; 5; 4];
% theta = [0.1; 0.2];
% j = hydist (X, y, theta)
% -----------------------------------------------------------------------------
% Author: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
% Mantainer: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
	dist = (X * theta) .- y;
end