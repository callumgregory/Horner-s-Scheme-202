function out = Merge(ain,bin)
% Merge two sorted lists of length na and length nb
% into one longer sorted list of length n=na+nb such that
% the resulting list is sorted in ascending order.
%
% Input: sorted lists ain and bin
% Output sorted list, containing all elements from ain and bin

na = length(ain);
nb = length(bin);
out = zeros(1,na+nb);
j=1; k=1; ell=1;
while (j<=na) && (k<=nb)
    if (ain(j)<bin(k))
        out(ell) = ain(j);
        j = j + 1;
    else
        out(ell) = bin(k);
        k = k + 1;
    end
    ell = ell+1;
end
while(j<=na)
    out(ell) = ain(j);
    j = j + 1; 
    ell = ell + 1;
end
while(k<=nb)
    out(ell) = bin(k);
    k = k + 1;
    ell = ell + 1;
end
end