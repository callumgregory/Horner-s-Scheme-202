function [An] = FastPower(A,n)
% Recursively calculate the n-th power of A, i.e. A^n with the 
% method described in Tickable 5
% Note that A can be a matrix
% Returns A^n
Dimensions = size(A);
if (n<0)
    % Make sure that n is non-negative
    error('Power n has to be non-negative');
elseif (n ~= floor(n))
    % Make sure that n is an integer
    error('n has to be an integer')
elseif (Dimensions(1) ~= Dimensions(2))
    % Make sure that A is a square matrix
    error('A has to be a square matrix');
elseif (n==0)
    % Base case: n=0, return identity matrix
    An = eye(size(A));
elseif (n==2*floor(n/2))
    % Recursive call: n is even
    An = FastPower(A*A,n/2);
else
    % Recursive call: n is odd
    An = A*FastPower(A*A,(n-1)/2);
end
end

