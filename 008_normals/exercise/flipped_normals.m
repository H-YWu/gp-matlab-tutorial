function FN = flipped_normals(V,F)
%FLIPPED_NORMALS Compute the flipped normals of a triangle mesh
%
% FN = flipped_normals(V,F);
%
% Inputs:
%  V,F  triangle mesh
% Outputs:
%  FN  flipped normals of the mesh V,N

%Compute per-face normals.
N = normals(V,F);
N = N ./ normrow(N);

%Flip the per-face normals.
FN = N * -1;

end

