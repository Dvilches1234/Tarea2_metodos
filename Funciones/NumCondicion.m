
%Num condicion de matriz a
function [ cond ] = NumCondicion( a )
  cond = NormInf(a) * NormInf(inv(a));
end

