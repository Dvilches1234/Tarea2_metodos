function i=trapeciocomp(a,b,n)    %f(z)=(10^3)*(9.8)*w(z)*(60-z)

syms z
a=input('introducir intervalo inferior: ');
b=input('introducir intervalo superior: ');
n=input('introducir numero de intervalos: ');
x0=1:n-1;
for i=1:n-1
    if i==1
        w(x0)=130;
    end
end



s=0;
h=(b-a);


for i=1:n-1
    
    s=s+f(x0);



end
trap=(h/2)*(a+2*s+b);


