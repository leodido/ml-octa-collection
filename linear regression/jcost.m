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

## usage: j = jcost (X, y, theta)
## 
## Compute cost for linear regression.
## Return the cost of using theta as the parameter for linear regression to fit
## the data point in X and y.
##
## example:
## X = [1 2; 1 3; 1 4; 1 5];
## y = [7; 6; 5; 4];
## theta = [0.1; 0.2];
## j = jcost (X, y, theta)
##
## author: leodido <leodidonato@gmail.com>
##
## keywords: cost function, linear regression
##
## mantainer: leodido <leodidonato@gmail.com>
function j = jcost (X, y, theta)
    term = (X * theta) .- y;
    j = 1 / (2 * size(X, 1)) * term' * term;
end

