function trap=trapeciocomp(a,b,n)    
z=1:7;
w=[122,130,135,160,175,190,200]
%  w(0)=122
 % w(1)=130
%a=input('introducir intervalo inferior: ');
%b=input('introducir intervalo superior: ');
%n=input('introducir numero de intervalos: ');
x0=1:n-1;
for i=1:n-1
    if i==1
        w(x0)=130;
    end
end
f(z)=(10^3)*(9.8)*w(z).*(6-z).*10 %f(z) de 1 a 7
%para ocupar el f real de un numero ocupar faux(numero,f)
%con f(0) te va tirar error, con faux(0,f) te va a tirar lo que corresponde
s=0;
h=(b-a);

for i=1:n-1 
    
    s=s+f(x0);

end
trap=(h/2)*(a+2*s+b);


