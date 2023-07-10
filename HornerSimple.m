function [Px] = HornerSimple(A,x)
% The function evaluates a polynomial p(x) using the Horner Scheme
% Inputs: A = a list [A0,A1,...,An] of coefficients (given as a 3D array)
% Inputs: x = an integer number or a square matrix with integer entries at
% which the polynomial is evaluated
% Output: The value of the polynomial given A and x
n=length(A);
m=size(A);
p=size(A,3);

% Case for when A is empty and x is either an integer or a square matrix
if n==0  
    Px=zeros(size(x));
% Case for when A is a row vector and x is either an integer or a square
% matrix
elseif m(1,1)==1 && m(1,2)==n  
    Px=A(n)*eye(size(x));
    for k=1:n-1
        Px=A(n-k)*eye(size(x))+x*Px;
    end
% Case for when A consists of matrices and x is either an integer or
% square matrix
else 
Px=A(:,:,p);
for k=1:p-1
    Px=A(:,:,p-k)*eye(size(x))+x*Px;
end
end
end
    

    
