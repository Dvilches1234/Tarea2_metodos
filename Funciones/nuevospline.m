 % colocar los puntos con [], ejm [1 2 3 4]
xi=input('introducir puntos  x: ');
yi=input('introducir puntos  y: '); 

txi=length(xi);
tyi=length(yi);
if txi==tyi 
    
   x=150:210;
    ysup=interp1(xi,yi,x,'spline');
    plot(x,ysup,'g')
    

end

%introducir puntos  x: [0 5 12.5 20 32.5 35 39]
%introducir puntos  y: [60 50 40 30 20 10 0]
% obs: los puntos son los que salen en la figura en el eje y
% con respecto al eje x se tuvo que sacar la relacion con el ancho del rio