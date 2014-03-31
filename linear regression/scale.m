%% Copyright (c) 2014 Leonardo Di Donato <leodidonato@gmail.com>
%% 
%% Redistribution and use in source and binary forms, with or without
%% modification, are permitted provided that the following conditions are met:
%% 
%% * Redistributions of source code must retain the above copyright notice, this
%%   list of conditions and the following disclaimer.
%% 
%% * Redistributions in binary form must reproduce the above copyright notice,
%%   this list of conditions and the following disclaimer in the documentation
%%   and/or other materials provided with the distribution.
%% 
%% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
%% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
%% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
%% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
%% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
%% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
%% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
%% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
%% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
%% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
%% POSSIBILITY OF SUCH DAMAGE.

%% usage: [XN, mu, sigma] = scale (X)
%% 
%% Normalize the matrix X.
%% Return a scaled version of X where the mean value of each feature
%% (i.e., column) is 0 and the standard deviation is 1.
%%
%% example:
%% X = [1 6; 2 7; 3 8; 4 9; 5 10];
%% [XN, mu, sigma] = scale (X)
%%
%% author: leodido <leodidonato@gmail.com>
%%
%% keywords: feature scaling
%%
%% mantainer: leodido <leodidonato@gmail.com>
function [XN, mu, sigma] = scale (X)
    m = size(X, 1);                                             % number of X rows
    mu = mean(X);                                               % mean
    sigma = std(X);                                             % standard deviation
    XN = (X .- repmat(mu, m, 1)) ./ repmat(sigma, m, 1);        % scaled matrix
end

