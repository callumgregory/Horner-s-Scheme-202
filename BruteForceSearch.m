function [idx] = BruteForceSearch(a,x)
% Find index of element in sorted array via brute force, by checking
% all entries in the array.
% It is assumed that the array contains integer values, which allows
% comparison with '=='. If the element is not found, Inf is returned
% If the array contains multiple entries x, the index of one of them
% is returned
%
% Input
%  a: array to be searched; a is sorted in ascending order
%  x: element to find
%
% Returns
%  index of element x in a, or -1 if x in not contained in a
idx = Inf;
for j=1:length(a)
    if (a(j) == x)
        idx = j;
    end
end
end

