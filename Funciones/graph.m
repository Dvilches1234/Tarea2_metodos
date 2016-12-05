% Genera los gráficos de la pregunta 4 b)
% en el script se debe ir modificando m para que genere los graficos deseados (n=8,15,20,50)
m=50;
n=m;

t=1:m;
for i=1 : m
	t(i)=-1+(i-1)*(2/(m-1));
end

f=ones(m);
f=f(:,1);
for i=1 : m
	f(i)=1/(1+(25*(t(i)^2)));
end

a=ones(m);
for i=2 : m
	for j=2 : n
		a(i,j)=t(i-1)^(j-1);
	end
end

x=Eliminacion_gaussiana(a,f)

g=1:m;
for i=1 : m
	g(i)=x(i)*t(i)^(i-1)
end

plot(t, g);
hold on; % without this one will delete y1 before drawing y2
plot(t, f, 'r');
