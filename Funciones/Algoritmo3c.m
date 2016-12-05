% Parametros de entrada : 
% x0 : vector inicial
% n : Iteraciones máximas
% e : Error 
% lambda : Valor de lambda en la ecuación
%Parametros de salida : 
% x : Solucion de la ecuación
function [ Xnew ] = Algoritmo3c(x0,n,e,lambda) 
    a = Matrix2(zeros(20));
    for i=1 : 20 
        if mod(i,2)==0
            b(i,1)=2;
        else
            b(i,1)=1;
        end
    end
    for k=1 : n
       l = Cholesky((a')*(a));
       latex(sym(vpa(l)))
       y = DiagDown(l,((-a')*((a*x0)-b))-((lambda)*(sgn(x0))));
       Xnew = DiagUp(l',y);
        if Norma1(Xnew-x0)<e
            return
        end
        x0 = Xnew;
        fprintf('valor de k : %i \n',k);
    end
end

