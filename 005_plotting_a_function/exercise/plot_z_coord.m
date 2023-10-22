function plot_z_coord(V,F)
%PLOT_Z_COORD  plot the z-coordinate on the input mesh
%
% plot_z_coord(V,F);
%
% Input:
%  V,F  mesh that is to be plotted
centers = (V(F(:,1),:) + V(F(:,2),:) + V(F(:,3),:)) / 3;
f = centers(:,1).^2 + centers(:,2).^2 + centers(:,3).^2;
% f = (V(F(:,1),3) + V(F(:,2),3) + V(F(:,3),3)) / 3;
tsurf(F, V, 'CData', f);
axis equal;
colorbar;
end

