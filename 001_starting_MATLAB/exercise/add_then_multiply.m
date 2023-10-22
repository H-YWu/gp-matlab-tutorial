function [result] = add_then_multiply(a1, a2, m)
%ADD_THEN_MULTIPLY adds two numbers a1 and a2, and then multiplies them by
%   a third number m
% 
% result = add_them_multiply(a1, a1, m);
%
% Inputs:
%  a1, a2: the two numbers that to be added
%  m: the number to multiply the sum by
%
% Outputs:
%  result:  the result of addition and then multiplication
result = (a1 + a2) * m;
end

