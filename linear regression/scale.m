function [XN, mu, sigma] = scale (X)
% -----------------------------------------------------------------------------
% Usage: [XN, mu, sigma] = scale (X)
% -----------------------------------------------------------------------------
% Parameters:
% X     : double, size(m, n)
% -----------------------------------------------------------------------------
% Return values:
% XN    : double, size(m, n)
% mu    : double, size(1, n)
% sigma : double, size(1, n)
% -----------------------------------------------------------------------------
% Normalize the matrix X.
% Return a scaled version of X where the mean value of each colum
% is 0 and the standard deviation is 1.
% -----------------------------------------------------------------------------
% Keywords: feature scaling, mean normalization
% -----------------------------------------------------------------------------
% Examples:
% X = [1 6; 2 7; 3 8; 4 9; 5 10];
% [XN, mu, sigma] = scale (X)
% -----------------------------------------------------------------------------
% Author: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
% Mantainer: leodido <leodidonato@gmail.com>
% -----------------------------------------------------------------------------
    m = size(X, 1);                                      % number of X rows
    mu = mean(X);                                        % mean
    sigma = std(X);                                      % standard deviation
    XN = (X .- repmat(mu, m, 1)) ./ repmat(sigma, m, 1); % scaled matrix
end

