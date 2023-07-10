function [sortB]=SortArrayB(index,B)
% The function maps the matrices in array B to a new position based on the
% outcome of the mergesort on the original index
% Inputs: index = the list i = [i1,i2,...,ik] of powers of x for all
% non-vanishing terms
% Inputs: B = the list B = [B1,B2,...,Bk] of non-zero coefficients
% Output: The sorted array of B which matches the transformation performed
% by the function mergesort on the original index list
i=MergeSort(index);
n=length(B);
m=length(index);
q=size(B);
C=[];
% Sorting the row vector B to a new position based on the
% outcome of the mergesort on the original index
if q(1,1)==1 && q(1,2)==n 
    for k=1:m
    g=BruteForceSearch(index,i(k));
    C(k)=B(g);
    end
    sortB=C;
% Sorting the array of matrices B to a new position based on the
% outcome of the mergesort on the original index
else
    for k=1:m
    g=BruteForceSearch(index,i(k));
    C(:,:,k)=B(:,:,g);
    end
    sortB=C;
end
