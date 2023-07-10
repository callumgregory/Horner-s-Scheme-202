function out = MergeSort(in)
% Sort the input array in in increasing order using the
% merge sort algorithm.
%
% Input: unsorted list in
% Output: sorted list out

n = length(in);
if (n == 1)
    out = in;
else
    nhalf = floor(n/2);
    out = Merge(MergeSort(in(1:nhalf)),...
                MergeSort(in(nhalf+1:n)));
end
end