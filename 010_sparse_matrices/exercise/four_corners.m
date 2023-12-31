function A = four_corners(m,n)
%FOUR_CORNERS Construct a m x n sparse matrix with ones in each of its four
%corners.
%
% t = four_corners(m,n);
%
% Inputs:
%  m,n  the dimension of the matrix requested
% Outputs:
%  A  the sparse matrix with ones in their four corners
%

rows = [1;1;m;m];
cols = [1;n;1;n];
values = [1;1;1;1];
A = sparse(rows, cols, values, m, n);

end

