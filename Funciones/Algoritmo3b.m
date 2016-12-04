
function [ Xnew ] = Algoritmo3b(x0,n,e,lambda) 
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
        [l,u] = FactorizacionLU(a'*a)
        suma = 0
        for i=1:size(x0)
           suma = suma +  abs(x0(i))
        end
         y = DiagDown(l,(-a')*((a*x0)-b) - lambda * (sgn(suma)))
         %Falla por que nose que subindice es el que se coloca en sgn
         Xnew = DiagUp(u,y) 
        if Norma1(Xnew-x0)<e
            return
        end
        x0=Xnew
    end
end

