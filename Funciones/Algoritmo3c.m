
function [ Xnew ] = Algoritmo3c(x0,n,e,lambda) 
    a = Matrix2(zeros(20))
    for i=1 : 20 
        if mod(i,2)==0
            b(i,1)=2;
        else
            b(i,1)=1;
        end
    end
    b
    for k=1 : n
       l = Cholesky((a')*(a));
       y = DiagDown(l,((-a')*((a*x0)-b))-((lambda)*(sgn(x0))));
       y
       Xnew = DiagUp(l',y)
       x0
       norma = Norma1(Xnew-x0)
        if Norma1(Xnew-x0)<e
            Xnew
            x0
            return
        end
        x0 =Xnew;
    end
end

