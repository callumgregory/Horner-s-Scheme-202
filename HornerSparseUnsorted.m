function [Px]=HornerSparseUnsorted(index,B,x)
% The function evaluates a polynomial p(x) iteratively using the Horner Scheme
% Inputs: index = the list i = [i1,i2,...,ik] of powers of x for all
% non-vanishing terms
% Inputs: B = the list B = [B1,B2,...,Bk] of non-zero coefficients
% Inputs: An integer number or a square matrix with integer entries at
% which the polynomial is evaluated
% Output: The value of the polynomial given index, B and x
i=MergeSort(index);
n=length(B); % Which is also the length of the index
p=size(B,3);
q=size(B);
C=SortArrayB(index,B); % C is the sorted array of B with respect to the mergesort of the index list 

% Case for when the array B is empty and x is either an integer or a square matrix
if n==0 
    Px=zeros(size(x));
% Case for when B is a row vector and x is either an integer or a square matrix
elseif q(1,1)==1 && q(1,2)==n 
    Px=C(n)*eye(size(x));
    for k=1:n-1
        Px=C(n-k)*eye(size(x))+FastPower(x,i(n-(k-1))-i(n-1-(k-1)))*Px;
    end
    Px=FastPower(x,i(1))*Px;
    % Case for when B consists of matrices and x is either an integer or
    % square matrix
else
    Px=C(:,:,p);
    for k=1:p-1
        Px=C(:,:,p-k)+FastPower(x,i(p-(k-1))-i(p-1-(k-1)))*Px;
    end
        Px=FastPower(x,i(1))*Px;
end
end

 