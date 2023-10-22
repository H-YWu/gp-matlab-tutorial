function L = boundary_length(V,F)
%BOUNDARY_LENGTH Compute the length of a mesh's boundary
%
% Input:
%  V,F  input mesh
% Output:
%  L  the length of the boundary

%Compute the indices of all boundary edges.
O = outline(F);

%Compute a matrix whose rows are equal to edgeEnd-edgeStart for each
%boundary edge.
BE = [];
for i = 1:size(O,1)
    BE(end+1,:) = V(O(i,1),:) - V(O(i,2),:); 
end

%Compute the total length of all boundary edges.
L = sum(normrow(BE));

end

