%soluciona sistema Ax=b con factorizacion lu

function [ sol ] = SolLU(a,b)   
[l,u]=FactorizacionLU(a);
 y=DiagDown(l,b);
 sol=DiagUp(u,y);   
end

