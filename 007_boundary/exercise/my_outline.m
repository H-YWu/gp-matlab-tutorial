function O = my_outline(F)
%MY_OUTLINE Find the boundary edges of a triangle mesh
%
% [O] = my_outline(F)
% 
% Input:
%  F  #F by polysize face list of indices
% Output:
%  O  #O by 2 list of boundary edges

v = size(unique(F));
sz = v(1,1);
E = zeros(sz, sz);
for i = 1:size(F,1)
    x = F(i,1);
    y = F(i,2);
    z = F(i,3);
    E(x,y) = E(x,y) + 1;
    E(y,x) = E(y,x) + 1;
    E(y,z) = E(y,z) + 1;
    E(z,y) = E(z,y) + 1;
    E(x,z) = E(x,z) + 1;
    E(z,x) = E(z,x) + 1;
end
O = [];
for i = 1:size(E,1)
    for j = i+1:size(E,2)
        if E(i,j) == 1
            O(end+1,:) = [i, j];
        end
    end
end
end

