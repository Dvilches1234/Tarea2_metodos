%soluciona sistema Ax=b con factorizacion lu

function [ sol ] = SolLU(a,b)   
[l,u]=FactorizacionLU(a);
sol=inv(u)*inv(l)*b;
end

