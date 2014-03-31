function [theta, jhist] = gdescent(X, y, theta, alpha, it)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, it) updates theta by
%   taking it gradient steps with learning rate alpha
    m = size(X, 1); % number of training examples
    jhist = zeros(it, 1);
    for iter = 1:it
        delta = 1 / m * X' * ((X * theta) .- y);
        theta = theta .- alpha * delta;  
        jhist = jcost(X, y, theta); % save the cost j
    end
end

