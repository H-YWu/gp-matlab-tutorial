function k = my_discrete_gaussian_curvature(V,F)
  % MY_DISCRETE_GAUSSIAN_CURVATURE Compute discrete gaussian curvature
  % using the angle defect
  % 
  % k = discrete_gaussian_curvature(V,F)
  %
  % Inputs:
  %   V  #V by 3 list of vertex positions
  %   F  #F by 3 list of face indies
  % Outputs:
  %   k  #V by 1 list of discrete gaussian curvature values
  %
  k = 2 * pi * ones(size(V,1),1);
  for i = 1:size(F,1)
      x = V(F(i,1),:);
      y = V(F(i,2),:);
      z = V(F(i,3),:);
      e1 = y - x;
      e1 = e1 / norm(e1);
      e2 = z - x;
      e2 = e2 / norm(e2);
      theta = acos(dot(e1, e2));
      k(F(i,1)) = k(F(i,1)) - theta;
      e1 = x - y;
      e1 = e1 / norm(e1);
      e2 = z - y;
      e2 = e2 / norm(e2);
      theta = acos(dot(e1, e2));
      k(F(i,2)) = k(F(i,2)) - theta;
      e1 = x - z;
      e1 = e1 / norm(e1);
      e2 = y - z;
      e2 = e2 / norm(e2);
      theta = acos(dot(e1, e2));
      k(F(i,3)) = k(F(i,3)) - theta;
end