function [theta, jhist] = gdescent(X, y, theta, alpha, it)
% -----------------------------------------------------------------------------
% Usage: [theta, jhist] = gdescent(X, y, theta, alpha, it)
% -----------------------------------------------------------------------------
% Parameters:
% X     : double, size(m, n)
% y     : double, size(m, 1)
% theta : double, size(n, 1)
% alpha : double, size(1, 1)
% it    : double, size(1, 1)
% -----------------------------------------------------------------------------
% Return values:
% theta : double, size(n, 1)
% jhist : double, size(it, 1)
% -----------------------------------------------------------------------------
% Perform gradient descent algorith to learn theta parameters.
% Update theta by taking it gradient steps with learning rate alpha.
% -----------------------------------------------------------------------------
% Keywords: gradient descent, linear regression
% -----------------------------------------------------------------------------
% Examples:
% X = [1 5; 1 2; 1 4; 1 5];
% y = [1; 6; 4; 2];
% theta = [0; 0];
% learnrate = 0.01;
% numiterations = 1000;
% [mintheta, jhist] = gdescent(X, y, theta, learnrate, numiterations)
% -----------------------------------------------------------------------------
% Author: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
% Mantainer: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
    m = size(X, 1);                                 % num of training examples
    jhist = zeros(it, 1);
    for iter = 1:it
        theta = theta .- alpha * 1 / m * X' * ((X * theta) .- y);  
        jhist(iter, 1) = jcost(X, y, theta);        % save the cost j
    end
end

