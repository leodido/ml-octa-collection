function j = jcost (X, y, theta)
% -----------------------------------------------------------------------------
% Usage: j = jcost (X, y, theta)
% -----------------------------------------------------------------------------
% Parameters:
% X     : double, size(m, n)
% y     : double, size(m, 1)
% theta : double, size(n, 1)
% -----------------------------------------------------------------------------
% Return values:
% j     : double, size(1,1)
% -----------------------------------------------------------------------------
% Compute cost for linear regression.
% Return the cost of using theta as the parameter for linear regression to fit
% the data point in X and y.
% -----------------------------------------------------------------------------
% Keywords: cost function, linear regression
% -----------------------------------------------------------------------------
% Examples:
% X = [1 2; 1 3; 1 4; 1 5];
% y = [7; 6; 5; 4];
% theta = [0.1; 0.2];
% j = jcost (X, y, theta)
% -----------------------------------------------------------------------------
% Author: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
% Mantainer: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
    dist = (X * theta) .- y;					% hypothesis - y
    j = (dist' * dist) / (2 * size(X, 1));
end

