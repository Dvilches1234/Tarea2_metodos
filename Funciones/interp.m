xs=input('introducir puntos superiores x: ');
ys=input('introducir puntos superiores y : ');     % colocar los puntos con [], ejemplo
                                                   %[1 2 3 4]
xi=input('introducir puntos inferiores x: ');
yi=input('introducir puntos inferiores y: ');
txs=length(xs);
tys=length(ys);
txi=length(xi);
tyi=length(yi);
if txs==tys && txi==tyi 
    
    x=1:37;
    ysup=[interp1(xs,ys,x,'csaps');interp1(xi,yi,x,'csaps')];
    plot(x,ysup,'g')
    

end