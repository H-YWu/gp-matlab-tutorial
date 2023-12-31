function A = my_spdiags(v,diagonals,m,n)
%MY_SPDIAGS Construct a banded matrix from diagonal input
%
% A = my_spdiags(v,diagonals,m,n);
%
% Inputs:
%  v  the diagonals to be inserted in the matrix - each column of v is one
%     diagonal in diagonals
%  diagonals  the index of diagonals requested
%  m,n  the dimension of the requested matrix
% Outputs:
%  A  the requested banded sparse matrix
%

A = sparse(m,n);
for i = 1:size(diagonals, 2)
    offset = diagonals(i);
    for j = 1:size(v,1)
        k = j + offset;
        if k < 1 || k > n
            continue
        end
        A(j,k) = v(j,i);
    end
end
end

