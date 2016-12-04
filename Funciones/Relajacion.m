%x0: x inicial
%a: Matriz de coeficiente del sistema 
%b: matriz con los resultados del sistema
%tol: tolerancia 
%w: valor de w
%m: I-Q^(-1)*A
%c: Q^(-1)*B

function [ rel ] = Relajacion( x0, a, b,tol,w)
    q=(1/w)*diag(diag(a))-tril(a);
    m=eye(sz(1))-inv(q)*a;
    c=inv(q)*b;
    xk=m*x0+c;
    respec=max(abs(eig(m)));
     if respec<1
     while norm(xk-x0)/norm(xk)>=tol
       cont=cont+1;
        x0=xk;
        xk=m*x0+c;
     end
     rel=xk;
   end
end

