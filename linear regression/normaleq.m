function [theta] = normaleq(X, y)
% -----------------------------------------------------------------------------
% Usage: theta = normaleq (X, y)
% -----------------------------------------------------------------------------
% Parameters:
% X     : double, size(m, n)
% y     : double, size(m, 1)
% -----------------------------------------------------------------------------
% Return values:
% theta : double, size(n, 1)
% ----------------------------------------------------------------------------- 
% Compute the closed-form solution to linear regression
% using normal equations.
% Perform the pseudo-inverse function to bypass the inversion of
% non-invertible matrices.
% -----------------------------------------------------------------------------
% Keywords: normal equations, linear regression
% -----------------------------------------------------------------------------
% Examples:
% X = [1 0; 0 2];
% y = [1; 1];
% theta = normaleq(X, y)
% -----------------------------------------------------------------------------
% Author: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
% Mantainer: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
    theta = pinv(X' * X) * X' * y;
end

