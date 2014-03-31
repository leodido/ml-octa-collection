## Copyright (c) 2014 Leonardo Di Donato <leodidonato@gmail.com>
## 
## Redistribution and use in source and binary forms, with or without
## modification, are permitted provided that the following conditions are met:
## 
## * Redistributions of source code must retain the above copyright notice, this
##   list of conditions and the following disclaimer.
## 
## * Redistributions in binary form must reproduce the above copyright notice,
##   this list of conditions and the following disclaimer in the documentation
##   and/or other materials provided with the distribution.
## 
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
## AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
## IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
## ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
## LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
## CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
## SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
## INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
## CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
## ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
## POSSIBILITY OF SUCH DAMAGE.

## usage: [theta, jhist] = gdescent(X, y, theta, alpha, it)
## 
## Perform gradient descent algorith to learn theta parameters.
## Update theta by taking it gradient steps with learning rate alpha.
##
## example:
## X = [1 5; 1 2; 1 4; 1 5];
## y = [1; 6; 4; 2];
## theta = [0; 0];
## learnrate = 0.01;
## numiterations = 1000;
## [mintheta, jhist] = gdescent(X, y, theta, learnrate, numiterations)
##
## author: leodido <leodidonato@gmail.com>
##
## keywords: gradient descent, linear regression
##
## mantainer: leodido <leodidonato@gmail.com>
function [theta, jhist] = gdescent(X, y, theta, alpha, it)
    m = size(X, 1);                                 # num of training examples
    jhist = zeros(it, 1);
    for iter = 1:it
        theta = theta .- alpha * 1 / m * X' * ((X * theta) .- y);  
        jhist(iter, 1) = jcost(X, y, theta);        # save the cost j
    end
end

