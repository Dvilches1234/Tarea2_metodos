z=1:7;
w=[122,130,135,160,175,190,200];
n=length(w);


h=(w(7)-w(1));
f(z)=(10^3)*(9.8)*w(z).*(6-z).*10; 
%f(z) de 1 a 7
%para ocupar el f real de un numero ocupar faux(numero,f)
%con f(x0)
s=0;


for i=2:n-1 
    
    s=s+f(i);

end
trap=(h/2)*(w(1)+2*s+w(7))

plot(w,f,'m')
hold on
plot(w,f,'g*')
xlabel('w')
ylabel('f')

