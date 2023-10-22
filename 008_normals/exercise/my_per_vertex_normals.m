function N = my_per_vertex_normals(V,F,varargin)
  % MY_PER_VERTEX_NORMALS  Compute per-vertex (area-weighted) normals over a mesh % (V,F)
  %
  % N = per_vertex_normals(V,F)
  %
  % Inputs:
  %   V  #V by 3 list of vertex positions
  %   F  #F by 3 list of triangle indices
  % Outputs:
  %   N  #V by 3 list of vertex normals, area-weighted
  %

  %Compute per-face normals.
  FN = normalizerow(normals(V,F));
  
  %Average to compute per-vertex normals.
  N = zeros(size(V));
  area = doublearea(V, F);
  A = zeros(size(V,1),1);
  for i = 1:size(F,1)
      face_area = area(i);
      weighted_normal = FN(i,:) * face_area;
      for j = 1:3
          N(F(i,j),:) = N(F(i,j),:) + weighted_normal;
          A(F(i,j)) = A(F(i,j)) + face_area;
      end
  end
  for i = 1:size(N,1)
      N(i,:) = N(i,:) / A(i);
  end
end
