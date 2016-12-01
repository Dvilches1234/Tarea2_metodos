function [ sol ] = SolPLU( a,b )
[l,u,p]=FactorizacionPLU(a);
sol=inv(u)*inv(l)*p*b;
end

