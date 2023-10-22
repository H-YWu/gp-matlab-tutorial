function N = my_normals(V,F)
  % MY_NORMALS Compute *unnormalized* normals per face
  %
  % N = normals(V,F)
  % N = normals(V,F,'ParameterName',ParameterValue, ...)
  %
  % Inputs:
  %  V  #V x 3 matrix of vertex coordinates
  %  F  #F x 3  matrix of indices of triangle corners
  % Output:
  %  N  #F x 3 list of face normals
  
  N = [];
  for i = 1:size(F,1)
      x = V(F(i,1),:);
      y = V(F(i,2),:);
      z = V(F(i,3),:);
      e1 = x - z;
      e2 = y - z;
      n = cross(e1, e2);
      N(end+1,:) = n;
  end
end