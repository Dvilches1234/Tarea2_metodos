% Parametros de entrada : 
% x0 : vector inicial
% n : Iteraciones máximas
% e : Error 
% lambda : Valor de lambda en la ecuación
%Parametros de salida : 
% x : Solucion de la ecuación
function [ Xnew ] = Algoritmo3b(x0,n,e,lambda) 
    a = Matrix2(zeros(20));
    for i=1 : 20 
        if mod(i,2)==0
            b(i,1)=2;
        else
            b(i,1)=1;
        end
    end
    for k=1 : n
        [l,u] = FactorizacionLU(a'*a);
         y = DiagDown(l,(-a')*((a*x0)-b) - lambda * (sgn(x0)));
         Xnew = DiagUp(u,y) ;
        if norm(Xnew-x0,1)<e
            return
        end
        fprintf('norma : %f',norm(Xnew-x0,1))
        x0=Xnew;
    end
end

