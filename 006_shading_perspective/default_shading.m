function default_shading(t)
%DEFAULT_SHADING Applies a default shading choice for the surface t plotted
%in the current figure
%
% Inputs:
%  t  surface to be shaded
    shading interp;
    axis equal;
    axis off;
    colormap(cbrewer('Blues', 500));
    light('Position',[-1.5 1 1],'Style','local');
    lights = camlight;
    set(t, 'FaceLighting','gouraud', 'FaceColor','interp');
    set(t, 'DiffuseStrength',0.5, 'SpecularStrength',0.2, 'AmbientStrength',0.3);
    camproj('perspective');
    add_shadow([t],lights);
end